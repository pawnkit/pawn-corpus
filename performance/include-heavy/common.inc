#if defined _perf_common_included
    #endinput
#endif
#define _perf_common_included

#include "nested/deep.inc"

#if defined DEBUG_BUILD
    #define LOG(%0) printf(%0)
#else
    #define LOG(%0)
#endif

new gZoneData[64][E_ZONE_DATA];
new gZoneCount;
