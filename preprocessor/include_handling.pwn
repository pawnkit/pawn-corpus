#include <a_samp>
#include "local_helpers.inc"
#tryinclude <optional_extension>
#tryinclude "optional_local.inc"

#if defined _INC_LOCAL_HELPERS
stock UseHelper()
{
    return HelperConstant;
}
#endif
