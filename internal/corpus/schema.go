// Package corpus implements fixture discovery and validation for pawn-corpus.
package corpus

import (
	"fmt"
	"net/url"
	"regexp"
	"sort"
)

// Schema is a minimal JSON Schema (2020-12 subset) validator: type, enum,
// properties, additionalProperties (bool form), required, items, minItems,
// uniqueItems, minLength, pattern, format ("uri"), and one level of
// allOf/if/then/else.
type Schema struct {
	raw map[string]any
}

func ParseSchema(raw map[string]any) *Schema {
	return &Schema{raw: raw}
}

type ValidationError struct {
	Path    string
	Message string
}

func (e ValidationError) Error() string {
	return fmt.Sprintf("%s: %s", e.Path, e.Message)
}

// Validate returns every violation found, not just the first.
func (s *Schema) Validate(instance any) []ValidationError {
	var errs []ValidationError
	validateNode(s.raw, instance, "$", &errs)
	sort.Slice(errs, func(i, j int) bool { return errs[i].Path < errs[j].Path })
	return errs
}

func fail(errs *[]ValidationError, path, format string, args ...any) {
	*errs = append(*errs, ValidationError{Path: path, Message: fmt.Sprintf(format, args...)})
}

func validateNode(schema map[string]any, instance any, path string, errs *[]ValidationError) {
	if t, ok := schema["type"].(string); ok {
		if !checkType(t, instance) {
			fail(errs, path, "expected type %q, got %s", t, describeType(instance))
			return
		}
	}

	if enum, ok := schema["enum"].([]any); ok {
		if !containsValue(enum, instance) {
			fail(errs, path, "value %v is not one of the allowed values %v", instance, enum)
		}
	}

	if constVal, ok := schema["const"]; ok {
		if !valuesEqual(constVal, instance) {
			fail(errs, path, "value %v does not equal required constant %v", instance, constVal)
		}
	}

	switch v := instance.(type) {
	case map[string]any:
		validateObject(schema, v, path, errs)
	case []any:
		validateArray(schema, v, path, errs)
	case string:
		validateString(schema, v, path, errs)
	}

	if allOf, ok := schema["allOf"].([]any); ok {
		for i, sub := range allOf {
			subSchema, ok := sub.(map[string]any)
			if !ok {
				continue
			}
			validateAllOfEntry(subSchema, instance, fmt.Sprintf("%s (allOf[%d])", path, i), errs)
		}
	}
}

func validateAllOfEntry(schema map[string]any, instance any, path string, errs *[]ValidationError) {
	ifSchema, hasIf := schema["if"].(map[string]any)
	if !hasIf {
		validateNode(schema, instance, path, errs)
		return
	}
	var probe []ValidationError
	validateNode(ifSchema, instance, path, &probe)
	if len(probe) == 0 {
		if thenSchema, ok := schema["then"].(map[string]any); ok {
			validateNode(thenSchema, instance, path, errs)
		}
	} else if elseSchema, ok := schema["else"].(map[string]any); ok {
		validateNode(elseSchema, instance, path, errs)
	}
}

func validateObject(schema map[string]any, obj map[string]any, path string, errs *[]ValidationError) {
	if required, ok := schema["required"].([]any); ok {
		for _, r := range required {
			name, _ := r.(string)
			if _, present := obj[name]; !present {
				fail(errs, path, "missing required field %q", name)
			}
		}
	}

	properties, _ := schema["properties"].(map[string]any)
	if additionalAllowed, ok := schema["additionalProperties"].(bool); ok && !additionalAllowed {
		names := make([]string, 0, len(obj))
		for name := range obj {
			names = append(names, name)
		}
		sort.Strings(names)
		for _, name := range names {
			if _, known := properties[name]; !known {
				fail(errs, path, "unexpected field %q not declared in schema", name)
			}
		}
	}

	if properties == nil {
		return
	}
	names := make([]string, 0, len(obj))
	for name := range obj {
		names = append(names, name)
	}
	sort.Strings(names)
	for _, name := range names {
		propSchema, ok := properties[name].(map[string]any)
		if !ok {
			continue
		}
		validateNode(propSchema, obj[name], path+"."+name, errs)
	}
}

func validateArray(schema map[string]any, arr []any, path string, errs *[]ValidationError) {
	if minItems, ok := numberOf(schema["minItems"]); ok && float64(len(arr)) < minItems {
		fail(errs, path, "expected at least %v items, got %d", minItems, len(arr))
	}
	if unique, ok := schema["uniqueItems"].(bool); ok && unique {
		seen := map[string]bool{}
		for i, item := range arr {
			key := fmt.Sprintf("%v", item)
			if seen[key] {
				fail(errs, path, "duplicate item at index %d: %v", i, item)
			}
			seen[key] = true
		}
	}
	if itemSchema, ok := schema["items"].(map[string]any); ok {
		for i, item := range arr {
			validateNode(itemSchema, item, fmt.Sprintf("%s[%d]", path, i), errs)
		}
	}
}

func validateString(schema map[string]any, str string, path string, errs *[]ValidationError) {
	if minLen, ok := numberOf(schema["minLength"]); ok && float64(len(str)) < minLen {
		fail(errs, path, "expected at least %v characters", minLen)
	}
	if pattern, ok := schema["pattern"].(string); ok {
		re, err := regexp.Compile(pattern)
		if err != nil {
			fail(errs, path, "internal error: invalid pattern %q in schema: %v", pattern, err)
		} else if !re.MatchString(str) {
			fail(errs, path, "value %q does not match required pattern %q", str, pattern)
		}
	}
	if format, ok := schema["format"].(string); ok && format == "uri" {
		if _, err := url.Parse(str); err != nil {
			fail(errs, path, "value %q is not a valid URI: %v", str, err)
		}
	}
}

func checkType(t string, instance any) bool {
	switch t {
	case "object":
		_, ok := instance.(map[string]any)
		return ok
	case "array":
		_, ok := instance.([]any)
		return ok
	case "string":
		_, ok := instance.(string)
		return ok
	case "boolean":
		_, ok := instance.(bool)
		return ok
	case "integer":
		n, ok := instance.(float64)
		return ok && n == float64(int64(n))
	case "number":
		_, ok := instance.(float64)
		return ok
	default:
		return true
	}
}

func describeType(instance any) string {
	switch instance.(type) {
	case nil:
		return "null"
	case map[string]any:
		return "object"
	case []any:
		return "array"
	case string:
		return "string"
	case bool:
		return "boolean"
	case float64:
		return "number"
	default:
		return fmt.Sprintf("%T", instance)
	}
}

func containsValue(haystack []any, needle any) bool {
	for _, v := range haystack {
		if valuesEqual(v, needle) {
			return true
		}
	}
	return false
}

func valuesEqual(a, b any) bool {
	return fmt.Sprintf("%v", a) == fmt.Sprintf("%v", b)
}

func numberOf(v any) (float64, bool) {
	n, ok := v.(float64)
	return n, ok
}
