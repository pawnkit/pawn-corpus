public bool:OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid, 0.0, 0.0, 3.0);
    return true;
}

public bool:OnPlayerRequestSpawn(playerid)
{
    if (IsPlayerBanned(playerid))
    {
        return false;
    }
    return true;
}
