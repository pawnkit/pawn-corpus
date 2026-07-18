forward OnPlayerStateSync(playerid) <default, connected, idle>;

public OnPlayerStateSync(playerid) <default>
{
    return 0;
}

public OnPlayerStateSync(playerid) <connected, idle>
{
    return playerid;
}
