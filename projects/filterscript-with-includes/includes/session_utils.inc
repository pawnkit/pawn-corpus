#if defined _INC_SESSION_UTILS
    #endinput
#endif
#define _INC_SESSION_UTILS

stock FormatSessionId(playerid)
{
    return playerid + 1000;
}

stock bool:IsValidSession(sessionId)
{
    return sessionId >= 1000;
}
