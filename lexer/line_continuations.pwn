#define GREETING \
    "Hello, " \
    "world"

forward OnLongCallback(
    playerid,
    dialogid,
    response,
    listitem,
    inputtext[]
);

stock TestContinuation()
{
    new msg[] = GREETING;
    new sum = 1 + \
        2 + \
        3;
    return sum + msg[0];
}
