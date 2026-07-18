#define MAX_ZONES 32
#define SQR(%0) ((%0) * (%0))
#define CLAMP(%0,%1,%2) ((%0) < (%1) ? (%1) : ((%0) > (%2) ? (%2) : (%0)))
#define TWICE(%0) %0 %0

stock TestMacroExpansion()
{
    new zones = MAX_ZONES;
    new squared = SQR(zones + 1);
    new clamped = CLAMP(zones, 0, 16);
    TWICE(zones++;)
    return squared + clamped + zones;
}
