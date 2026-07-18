#define FEATURE_NEW_HUD

#if defined FEATURE_NEW_HUD
    #define HUD_VERSION 2
#elseif defined FEATURE_LEGACY_HUD
    #define HUD_VERSION 1
#else
    #define HUD_VERSION 0
#endif

#if HUD_VERSION >= 2
stock ShowHud()
{
    return 2;
}
#else
stock ShowHud()
{
    return 1;
}
#endif

#if !defined DISABLE_DEBUG_HUD
stock ShowDebugHud()
{
    return 1;
}
#endif
