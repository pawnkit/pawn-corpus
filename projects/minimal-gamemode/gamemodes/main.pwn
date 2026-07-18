#include <a_samp>

main()
{
    print("minimal-gamemode loaded");
}

public OnGameModeInit()
{
    SetGameModeText("minimal-gamemode");
    return 1;
}

public OnPlayerConnect(playerid)
{
    return 1;
}
