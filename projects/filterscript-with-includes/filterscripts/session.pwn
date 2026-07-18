#include <a_samp>
#include "session_utils.inc"

public OnFilterScriptInit()
{
    return 1;
}

public OnPlayerConnect(playerid)
{
    new sessionId = FormatSessionId(playerid);
    return IsValidSession(sessionId);
}
