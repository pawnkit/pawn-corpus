public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid, 0.0, 0.0, 3.0);
    return 1;
}

public OnPlayerRequestSpawn(playerid)
{
    if (IsPlayerBanned(playerid))
    {
        return 0;
    }
    return 1;
}
