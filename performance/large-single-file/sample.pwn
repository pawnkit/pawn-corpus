#define MAX_PLAYERS 1000
#define INVALID_ID (-1)

enum E_ENTITY_DATA {
    entityOwner,
    Float:entityHealth,
    entityState,
}

new gEntityData[MAX_PLAYERS][E_ENTITY_DATA];
new gEntityCount;
new Float:gWorldScale = 1.0;

forward HandleVehicleVehicle0(playerid, value);
public HandleVehicleVehicle0(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    return floatround(result);
}

forward HandleStateFaction1(playerid, value);
public HandleStateFaction1(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleVehicle0(playerid, local_values[0]);
    return floatround(result);
}

forward HandleInventoryMarker2(playerid, value);
public HandleInventoryMarker2(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleVehicle0(playerid, local_values[0]);
    return floatround(result);
}

forward HandleZoneZone3(playerid, value);
public HandleZoneZone3(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryMarker2(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMoneyWeapon4(playerid, value);
public HandleMoneyWeapon4(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateFaction1(playerid, local_values[0]);
    return floatround(result);
}

forward HandleScoreZone5(playerid, value);
public HandleScoreZone5(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateFaction1(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionText6(playerid, value);
public HandleSessionText6(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryMarker2(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextPlayer7(playerid, value);
public HandleTextPlayer7(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleWeaponState8(playerid, value);
public HandleWeaponState8(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionZone9(playerid, value);
public HandleSessionZone9(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionText6(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStateMoney10(playerid, value);
public HandleStateMoney10(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionVehicle11(playerid, value);
public HandleSessionVehicle11(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePlayerVehicle12(playerid, value);
public HandlePlayerVehicle12(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleInventory13(playerid, value);
public HandleVehicleInventory13(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateMoney10(playerid, local_values[0]);
    return floatround(result);
}

forward HandleZonePosition14(playerid, value);
public HandleZonePosition14(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleChatSkin15(playerid, value);
public HandleChatSkin15(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleInventory13(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePlayerSession16(playerid, value);
public HandlePlayerSession16(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionZone9(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinMarker17(playerid, value);
public HandleSkinMarker17(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePlayerSession16(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionObject18(playerid, value);
public HandleSessionObject18(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHouseWeapon19(playerid, value);
public HandleHouseWeapon19(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleChatSkin15(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleSkin20(playerid, value);
public HandleVehicleSkin20(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateMoney10(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionHouse21(playerid, value);
public HandleSessionHouse21(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHouseWeapon19(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePlayerVehicle22(playerid, value);
public HandlePlayerVehicle22(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleSkin20(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMoneyTeam23(playerid, value);
public HandleMoneyTeam23(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHousePosition24(playerid, value);
public HandleHousePosition24(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZonePosition14(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehiclePlayer25(playerid, value);
public HandleVehiclePlayer25(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryMarker2(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStateZone26(playerid, value);
public HandleStateZone26(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePlayerVehicle22(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionDialog27(playerid, value);
public HandleSessionDialog27(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePlayerSession16(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinDialog28(playerid, value);
public HandleSkinDialog28(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinText29(playerid, value);
public HandleSkinText29(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMoneyTeam23(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuTeam30(playerid, value);
public HandleMenuTeam30(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePlayerSession16(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuDialog31(playerid, value);
public HandleMenuDialog31(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionDialog27(playerid, local_values[0]);
    return floatround(result);
}

forward HandleDialogTeam32(playerid, value);
public HandleDialogTeam32(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextMenu33(playerid, value);
public HandleTextMenu33(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionText6(playerid, local_values[0]);
    return floatround(result);
}

forward HandleFactionMoney34(playerid, value);
public HandleFactionMoney34(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateFaction1(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMarkerTeam35(playerid, value);
public HandleMarkerTeam35(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleVehicle0(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinZone36(playerid, value);
public HandleSkinZone36(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinDialog28(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuFaction37(playerid, value);
public HandleMenuFaction37(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTeamWeapon38(playerid, value);
public HandleTeamWeapon38(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinMarker17(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionMarker39(playerid, value);
public HandleSessionMarker39(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuTeam40(playerid, value);
public HandleMenuTeam40(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryMarker2(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMarkerState41(playerid, value);
public HandleMarkerState41(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerMoney42(playerid, value);
public HandleTimerMoney42(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMoneyWeapon4(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleSession43(playerid, value);
public HandleVehicleSession43(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMoneyTeam23(playerid, local_values[0]);
    return floatround(result);
}

forward HandleChatState44(playerid, value);
public HandleChatState44(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuTeam30(playerid, local_values[0]);
    return floatround(result);
}

forward HandleDialogCheckpoint45(playerid, value);
public HandleDialogCheckpoint45(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleInventoryPlayer46(playerid, value);
public HandleInventoryPlayer46(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleInventory13(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHouseFaction47(playerid, value);
public HandleHouseFaction47(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHousePosition24(playerid, local_values[0]);
    return floatround(result);
}

forward HandleScoreZone48(playerid, value);
public HandleScoreZone48(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHouseFaction47(playerid, local_values[0]);
    return floatround(result);
}

forward HandleInventoryInventory49(playerid, value);
public HandleInventoryInventory49(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionMarker39(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectZone50(playerid, value);
public HandleObjectZone50(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateFaction1(playerid, local_values[0]);
    return floatround(result);
}

forward HandleInventoryMenu51(playerid, value);
public HandleInventoryMenu51(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinText29(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleFaction52(playerid, value);
public HandleVehicleFaction52(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionObject18(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectHouse53(playerid, value);
public HandleObjectHouse53(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleDialogCheckpoint45(playerid, local_values[0]);
    return floatround(result);
}

forward HandleFactionZone54(playerid, value);
public HandleFactionZone54(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHousePosition24(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePlayerCheckpoint55(playerid, value);
public HandlePlayerCheckpoint55(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTimerMoney42(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHouseMarker56(playerid, value);
public HandleHouseMarker56(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHousePosition24(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHouseInventory57(playerid, value);
public HandleHouseInventory57(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTeamWeapon38(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuObject58(playerid, value);
public HandleMenuObject58(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateZone26(playerid, local_values[0]);
    return floatround(result);
}

forward HandleDialogSkin59(playerid, value);
public HandleDialogSkin59(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleChatHouse60(playerid, value);
public HandleChatHouse60(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextMenu33(playerid, local_values[0]);
    return floatround(result);
}

forward HandleZoneCheckpoint61(playerid, value);
public HandleZoneCheckpoint61(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePlayerVehicle12(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStatePlayer62(playerid, value);
public HandleStatePlayer62(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuTeam40(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextHouse63(playerid, value);
public HandleTextHouse63(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleObjectZone50(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePositionState64(playerid, value);
public HandlePositionState64(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleScoreZone48(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePositionZone65(playerid, value);
public HandlePositionZone65(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleChatHouse60(playerid, local_values[0]);
    return floatround(result);
}

forward HandleWeaponWeapon66(playerid, value);
public HandleWeaponWeapon66(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleDialogObject67(playerid, value);
public HandleDialogObject67(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinDialog28(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionInventory68(playerid, value);
public HandleSessionInventory68(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHousePosition24(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSessionInventory69(playerid, value);
public HandleSessionInventory69(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneCheckpoint61(playerid, local_values[0]);
    return floatround(result);
}

forward HandleHouseObject70(playerid, value);
public HandleHouseObject70(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuDialog31(playerid, local_values[0]);
    return floatround(result);
}

forward HandleFactionPlayer71(playerid, value);
public HandleFactionPlayer71(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinText29(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectSkin72(playerid, value);
public HandleObjectSkin72(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHouseFaction47(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinObject73(playerid, value);
public HandleSkinObject73(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextMenu33(playerid, local_values[0]);
    return floatround(result);
}

forward HandleCheckpointDialog74(playerid, value);
public HandleCheckpointDialog74(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleSession43(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextText75(playerid, value);
public HandleTextText75(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHouseObject70(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePlayerWeapon76(playerid, value);
public HandlePlayerWeapon76(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleDialogTeam32(playerid, local_values[0]);
    return floatround(result);
}

forward HandleScoreMenu77(playerid, value);
public HandleScoreMenu77(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleChatHouse60(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextSkin78(playerid, value);
public HandleTextSkin78(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuObject58(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuCheckpoint79(playerid, value);
public HandleMenuCheckpoint79(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionMarker39(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerMenu80(playerid, value);
public HandleTimerMenu80(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuDialog31(playerid, local_values[0]);
    return floatround(result);
}

forward HandleFactionVehicle81(playerid, value);
public HandleFactionVehicle81(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleHousePosition24(playerid, local_values[0]);
    return floatround(result);
}

forward HandlePositionChat82(playerid, value);
public HandlePositionChat82(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionVehicle11(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStateSession83(playerid, value);
public HandleStateSession83(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuFaction37(playerid, local_values[0]);
    return floatround(result);
}

forward HandleCheckpointMoney84(playerid, value);
public HandleCheckpointMoney84(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuCheckpoint79(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStateInventory85(playerid, value);
public HandleStateInventory85(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTimerMenu80(playerid, local_values[0]);
    return floatround(result);
}

forward HandleInventoryTimer86(playerid, value);
public HandleInventoryTimer86(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleScoreSession87(playerid, value);
public HandleScoreSession87(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateZone26(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinCheckpoint88(playerid, value);
public HandleSkinCheckpoint88(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryTimer86(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerChat89(playerid, value);
public HandleTimerChat89(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStateInventory85(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTeamWeapon90(playerid, value);
public HandleTeamWeapon90(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePositionChat82(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerVehicle91(playerid, value);
public HandleTimerVehicle91(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleDialogTeam32(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMoneyTeam92(playerid, value);
public HandleMoneyTeam92(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMarkerState41(playerid, local_values[0]);
    return floatround(result);
}

forward HandleScoreInventory93(playerid, value);
public HandleScoreInventory93(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinZone36(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectObject94(playerid, value);
public HandleObjectObject94(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleSkinText95(playerid, value);
public HandleSkinText95(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMarkerTeam35(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectState96(playerid, value);
public HandleObjectState96(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTimerMenu80(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTextState97(playerid, value);
public HandleTextState97(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleText98(playerid, value);
public HandleVehicleText98(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextState97(playerid, local_values[0]);
    return floatround(result);
}

forward HandleVehicleObject99(playerid, value);
public HandleVehicleObject99(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextMenu33(playerid, local_values[0]);
    return floatround(result);
}

forward HandleStatePosition100(playerid, value);
public HandleStatePosition100(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState8(playerid, local_values[0]);
    return floatround(result);
}

forward HandleZoneVehicle101(playerid, value);
public HandleZoneVehicle101(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTimerMenu80(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerText102(playerid, value);
public HandleTimerText102(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMoneyTeam92(playerid, local_values[0]);
    return floatround(result);
}

forward HandleObjectMarker103(playerid, value);
public HandleObjectMarker103(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneVehicle101(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMarkerTimer104(playerid, value);
public HandleMarkerTimer104(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehicleText98(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMarkerPlayer105(playerid, value);
public HandleMarkerPlayer105(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleScoreInventory93(playerid, local_values[0]);
    return floatround(result);
}

forward HandleZoneText106(playerid, value);
public HandleZoneText106(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryInventory49(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuMoney107(playerid, value);
public HandleMenuMoney107(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleVehiclePlayer25(playerid, local_values[0]);
    return floatround(result);
}

forward HandleWeaponState108(playerid, value);
public HandleWeaponState108(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandlePositionState64(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerMenu109(playerid, value);
public HandleTimerMenu109(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTextPlayer7(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuInventory110(playerid, value);
public HandleMenuInventory110(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSessionVehicle11(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMarkerHouse111(playerid, value);
public HandleMarkerHouse111(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleMenuObject58(playerid, local_values[0]);
    return floatround(result);
}

forward HandleTimerVehicle112(playerid, value);
public HandleTimerVehicle112(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleTeamWeapon38(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMoneyScore113(playerid, value);
public HandleMoneyScore113(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleWeaponState108(playerid, local_values[0]);
    return floatround(result);
}

forward HandleFactionTimer114(playerid, value);
public HandleFactionTimer114(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleStatePlayer62(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMoneyVehicle115(playerid, value);
public HandleMoneyVehicle115(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleZoneZone3(playerid, local_values[0]);
    return floatround(result);
}

forward HandleMenuTeam116(playerid, value);
public HandleMenuTeam116(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleSkinText29(playerid, local_values[0]);
    return floatround(result);
}

forward HandleDialogWeapon117(playerid, value);
public HandleDialogWeapon117(playerid, value) {
    new Float:result = 0.0;
    new local_values[4];
    for (new i = 0; i < 4; i++) {
        local_values[i] = value + i;
    }
    if (playerid >= 0 && playerid < MAX_PLAYERS) {
        gEntityData[playerid][entityOwner] = playerid;
        result = gWorldScale * float(value);
    } else {
        result = -1.0;
    }
    switch (value % 3) {
        case 0: gEntityData[0][entityState] = 1;
        case 1: gEntityData[0][entityState] = 2;
        default: gEntityData[0][entityState] = 0;
    }
    HandleInventoryMenu51(playerid, local_values[0]);
    return floatround(result);
}

