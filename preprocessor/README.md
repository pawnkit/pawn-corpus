# Preprocessor compatibility fixtures

These fixtures define the preprocessing behavior shared by PawnKit tools.
Compiler probes use Pawn compiler 3.10.10 and open.mp compiler 3.10.11.

| Behavior | Fixtures | Expected result |
|---|---|---|
| Active branches | `active_regions_nested`, `conditional_compilation_ifdef` | Only the selected branch reaches analysis. |
| Profile defines | `profile_openmp_define` | The open.mp profile defines `__OPEN_MP__`. |
| Directive spelling | `compiler_elseif`, `compiler_elif` | `#elseif` is valid; `#elif` is not. |
| Include order | `compiler_include_order` | Later includes see macros from earlier includes. |
| Repeated includes | `compiler_include_twice` | Pawncc rejects unguarded duplicates unless `-Z+` is used. |
| Included locations | `compiler_source_location` | Diagnostics point to the included file and line. |
| Macro expansion | `macro_expansion_basic` | Object-like and function-like macros expand. |
| Macro redefinition | `compiler_macro_redefinition` | Pawncc reports warning 201. |
| Expansion limits | `macro_recursion`, `compiler_macro_self_recursion` | PawnKit stops safely; compiler probes require a timeout. |

`include_handling` remains pending until its include files are added to the
adapter fixture.

Clean and incremental agreement is tested by `pawn-analysis/query`.
