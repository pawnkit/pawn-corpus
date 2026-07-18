#include <a_samp>
#tryinclude "custom_extras.inc"

#define MAX_ZONES 32
#define SQR(%0) ((%0) * (%0))

const VERSION_MAJOR = 1;

main()
{
    new zones = MAX_ZONES;
    return SQR(zones);
}
