#if defined _perf_macro_heavy_included
    #endinput
#endif
#define _perf_macro_heavy_included

#define MAX_ENTITIES 500
#define SQR(%0) ((%0) * (%0))
#define CLAMP(%0,%1,%2) ((%0) < (%1) ? (%1) : ((%0) > (%2) ? (%2) : (%0)))
#define DOUBLE_SQR(%0) SQR(SQR(%0))
#define LONG_MACRO(%0) \
    ((%0) + \
     (%0) * 2 + \
     (%0) * 3)

#if defined OPEN_MP
    #define PLATFORM_NAME "open.mp"
#else
    #define PLATFORM_NAME "sa-mp"
#endif

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_0
forward Hooked_OnVehicle_0(playerid);
public Hooked_OnVehicle_0(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_1
forward Hooked_OnVehicle_1(playerid);
public Hooked_OnVehicle_1(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_2
forward Hooked_OnState_2(playerid);
public Hooked_OnState_2(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_3
forward Hooked_OnFaction_3(playerid);
public Hooked_OnFaction_3(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_4
forward Hooked_OnChat_4(playerid);
public Hooked_OnChat_4(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_5
forward Hooked_OnInventory_5(playerid);
public Hooked_OnInventory_5(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_6
forward Hooked_OnMarker_6(playerid);
public Hooked_OnMarker_6(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_7
forward Hooked_OnZone_7(playerid);
public Hooked_OnZone_7(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_8
forward Hooked_OnZone_8(playerid);
public Hooked_OnZone_8(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_9
forward Hooked_OnZone_9(playerid);
public Hooked_OnZone_9(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_10
forward Hooked_OnInventory_10(playerid);
public Hooked_OnInventory_10(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_11
forward Hooked_OnMoney_11(playerid);
public Hooked_OnMoney_11(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_12
forward Hooked_OnWeapon_12(playerid);
public Hooked_OnWeapon_12(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_13
forward Hooked_OnMoney_13(playerid);
public Hooked_OnMoney_13(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnScore
    #undef OnScore
#endif
#define OnScore Hooked_OnScore_14
forward Hooked_OnScore_14(playerid);
public Hooked_OnScore_14(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_15
forward Hooked_OnZone_15(playerid);
public Hooked_OnZone_15(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_16
forward Hooked_OnMarker_16(playerid);
public Hooked_OnMarker_16(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_17
forward Hooked_OnSession_17(playerid);
public Hooked_OnSession_17(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_18
forward Hooked_OnText_18(playerid);
public Hooked_OnText_18(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_19
forward Hooked_OnPosition_19(playerid);
public Hooked_OnPosition_19(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_20
forward Hooked_OnText_20(playerid);
public Hooked_OnText_20(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_21
forward Hooked_OnPlayer_21(playerid);
public Hooked_OnPlayer_21(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_22
forward Hooked_OnWeapon_22(playerid);
public Hooked_OnWeapon_22(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_23
forward Hooked_OnWeapon_23(playerid);
public Hooked_OnWeapon_23(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_24
forward Hooked_OnState_24(playerid);
public Hooked_OnState_24(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_25
forward Hooked_OnMoney_25(playerid);
public Hooked_OnMoney_25(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_26
forward Hooked_OnSession_26(playerid);
public Hooked_OnSession_26(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_27
forward Hooked_OnZone_27(playerid);
public Hooked_OnZone_27(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_28
forward Hooked_OnHouse_28(playerid);
public Hooked_OnHouse_28(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_29
forward Hooked_OnState_29(playerid);
public Hooked_OnState_29(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_30
forward Hooked_OnMoney_30(playerid);
public Hooked_OnMoney_30(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_31
forward Hooked_OnObject_31(playerid);
public Hooked_OnObject_31(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_32
forward Hooked_OnSession_32(playerid);
public Hooked_OnSession_32(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_33
forward Hooked_OnVehicle_33(playerid);
public Hooked_OnVehicle_33(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_34
forward Hooked_OnText_34(playerid);
public Hooked_OnText_34(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_35
forward Hooked_OnPlayer_35(playerid);
public Hooked_OnPlayer_35(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_36
forward Hooked_OnVehicle_36(playerid);
public Hooked_OnVehicle_36(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_37
forward Hooked_OnCheckpoint_37(playerid);
public Hooked_OnCheckpoint_37(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_38
forward Hooked_OnVehicle_38(playerid);
public Hooked_OnVehicle_38(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_39
forward Hooked_OnInventory_39(playerid);
public Hooked_OnInventory_39(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_40
forward Hooked_OnCheckpoint_40(playerid);
public Hooked_OnCheckpoint_40(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_41
forward Hooked_OnZone_41(playerid);
public Hooked_OnZone_41(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_42
forward Hooked_OnPosition_42(playerid);
public Hooked_OnPosition_42(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_43
forward Hooked_OnSkin_43(playerid);
public Hooked_OnSkin_43(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_44
forward Hooked_OnChat_44(playerid);
public Hooked_OnChat_44(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_45
forward Hooked_OnSkin_45(playerid);
public Hooked_OnSkin_45(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_46
forward Hooked_OnPosition_46(playerid);
public Hooked_OnPosition_46(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_47
forward Hooked_OnPlayer_47(playerid);
public Hooked_OnPlayer_47(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_48
forward Hooked_OnSession_48(playerid);
public Hooked_OnSession_48(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_49
forward Hooked_OnSkin_49(playerid);
public Hooked_OnSkin_49(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_50
forward Hooked_OnSkin_50(playerid);
public Hooked_OnSkin_50(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_51
forward Hooked_OnMarker_51(playerid);
public Hooked_OnMarker_51(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_52
forward Hooked_OnText_52(playerid);
public Hooked_OnText_52(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_53
forward Hooked_OnSession_53(playerid);
public Hooked_OnSession_53(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_54
forward Hooked_OnObject_54(playerid);
public Hooked_OnObject_54(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_55
forward Hooked_OnMarker_55(playerid);
public Hooked_OnMarker_55(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_56
forward Hooked_OnHouse_56(playerid);
public Hooked_OnHouse_56(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_57
forward Hooked_OnWeapon_57(playerid);
public Hooked_OnWeapon_57(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_58
forward Hooked_OnMoney_58(playerid);
public Hooked_OnMoney_58(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_59
forward Hooked_OnVehicle_59(playerid);
public Hooked_OnVehicle_59(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_60
forward Hooked_OnSkin_60(playerid);
public Hooked_OnSkin_60(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_61
forward Hooked_OnInventory_61(playerid);
public Hooked_OnInventory_61(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_62
forward Hooked_OnSession_62(playerid);
public Hooked_OnSession_62(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_63
forward Hooked_OnHouse_63(playerid);
public Hooked_OnHouse_63(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_64
forward Hooked_OnZone_64(playerid);
public Hooked_OnZone_64(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_65
forward Hooked_OnPlayer_65(playerid);
public Hooked_OnPlayer_65(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_66
forward Hooked_OnVehicle_66(playerid);
public Hooked_OnVehicle_66(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_67
forward Hooked_OnMenu_67(playerid);
public Hooked_OnMenu_67(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_68
forward Hooked_OnMoney_68(playerid);
public Hooked_OnMoney_68(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_69
forward Hooked_OnTeam_69(playerid);
public Hooked_OnTeam_69(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_70
forward Hooked_OnSession_70(playerid);
public Hooked_OnSession_70(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_71
forward Hooked_OnHouse_71(playerid);
public Hooked_OnHouse_71(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_72
forward Hooked_OnPosition_72(playerid);
public Hooked_OnPosition_72(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_73
forward Hooked_OnInventory_73(playerid);
public Hooked_OnInventory_73(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_74
forward Hooked_OnVehicle_74(playerid);
public Hooked_OnVehicle_74(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_75
forward Hooked_OnPlayer_75(playerid);
public Hooked_OnPlayer_75(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_76
forward Hooked_OnVehicle_76(playerid);
public Hooked_OnVehicle_76(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_77
forward Hooked_OnState_77(playerid);
public Hooked_OnState_77(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_78
forward Hooked_OnZone_78(playerid);
public Hooked_OnZone_78(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_79
forward Hooked_OnPosition_79(playerid);
public Hooked_OnPosition_79(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_80
forward Hooked_OnSession_80(playerid);
public Hooked_OnSession_80(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_81
forward Hooked_OnDialog_81(playerid);
public Hooked_OnDialog_81(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_82
forward Hooked_OnMoney_82(playerid);
public Hooked_OnMoney_82(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_83
forward Hooked_OnSkin_83(playerid);
public Hooked_OnSkin_83(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_84
forward Hooked_OnDialog_84(playerid);
public Hooked_OnDialog_84(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_85
forward Hooked_OnFaction_85(playerid);
public Hooked_OnFaction_85(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_86
forward Hooked_OnSkin_86(playerid);
public Hooked_OnSkin_86(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_87
forward Hooked_OnText_87(playerid);
public Hooked_OnText_87(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_88
forward Hooked_OnFaction_88(playerid);
public Hooked_OnFaction_88(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_89
forward Hooked_OnMenu_89(playerid);
public Hooked_OnMenu_89(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_90
forward Hooked_OnTeam_90(playerid);
public Hooked_OnTeam_90(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_91
forward Hooked_OnPlayer_91(playerid);
public Hooked_OnPlayer_91(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_92
forward Hooked_OnMenu_92(playerid);
public Hooked_OnMenu_92(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_93
forward Hooked_OnDialog_93(playerid);
public Hooked_OnDialog_93(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_94
forward Hooked_OnTeam_94(playerid);
public Hooked_OnTeam_94(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_95
forward Hooked_OnDialog_95(playerid);
public Hooked_OnDialog_95(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_96
forward Hooked_OnTeam_96(playerid);
public Hooked_OnTeam_96(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_97
forward Hooked_OnFaction_97(playerid);
public Hooked_OnFaction_97(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_98
forward Hooked_OnText_98(playerid);
public Hooked_OnText_98(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_99
forward Hooked_OnMenu_99(playerid);
public Hooked_OnMenu_99(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_100
forward Hooked_OnCheckpoint_100(playerid);
public Hooked_OnCheckpoint_100(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_101
forward Hooked_OnFaction_101(playerid);
public Hooked_OnFaction_101(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_102
forward Hooked_OnMoney_102(playerid);
public Hooked_OnMoney_102(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_103
forward Hooked_OnSkin_103(playerid);
public Hooked_OnSkin_103(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_104
forward Hooked_OnMarker_104(playerid);
public Hooked_OnMarker_104(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_105
forward Hooked_OnTeam_105(playerid);
public Hooked_OnTeam_105(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_106
forward Hooked_OnPlayer_106(playerid);
public Hooked_OnPlayer_106(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_107
forward Hooked_OnSkin_107(playerid);
public Hooked_OnSkin_107(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_108
forward Hooked_OnZone_108(playerid);
public Hooked_OnZone_108(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_109
forward Hooked_OnMenu_109(playerid);
public Hooked_OnMenu_109(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_110
forward Hooked_OnMenu_110(playerid);
public Hooked_OnMenu_110(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_111
forward Hooked_OnFaction_111(playerid);
public Hooked_OnFaction_111(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_112
forward Hooked_OnChat_112(playerid);
public Hooked_OnChat_112(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_113
forward Hooked_OnTeam_113(playerid);
public Hooked_OnTeam_113(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_114
forward Hooked_OnWeapon_114(playerid);
public Hooked_OnWeapon_114(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_115
forward Hooked_OnVehicle_115(playerid);
public Hooked_OnVehicle_115(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_116
forward Hooked_OnSession_116(playerid);
public Hooked_OnSession_116(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_117
forward Hooked_OnMarker_117(playerid);
public Hooked_OnMarker_117(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_118
forward Hooked_OnCheckpoint_118(playerid);
public Hooked_OnCheckpoint_118(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_119
forward Hooked_OnMenu_119(playerid);
public Hooked_OnMenu_119(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_120
forward Hooked_OnTeam_120(playerid);
public Hooked_OnTeam_120(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_121
forward Hooked_OnHouse_121(playerid);
public Hooked_OnHouse_121(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_122
forward Hooked_OnMarker_122(playerid);
public Hooked_OnMarker_122(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_123
forward Hooked_OnState_123(playerid);
public Hooked_OnState_123(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_124
forward Hooked_OnPosition_124(playerid);
public Hooked_OnPosition_124(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTimer
    #undef OnTimer
#endif
#define OnTimer Hooked_OnTimer_125
forward Hooked_OnTimer_125(playerid);
public Hooked_OnTimer_125(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_126
forward Hooked_OnMoney_126(playerid);
public Hooked_OnMoney_126(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTimer
    #undef OnTimer
#endif
#define OnTimer Hooked_OnTimer_127
forward Hooked_OnTimer_127(playerid);
public Hooked_OnTimer_127(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_128
forward Hooked_OnVehicle_128(playerid);
public Hooked_OnVehicle_128(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_129
forward Hooked_OnSession_129(playerid);
public Hooked_OnSession_129(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_130
forward Hooked_OnObject_130(playerid);
public Hooked_OnObject_130(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_131
forward Hooked_OnChat_131(playerid);
public Hooked_OnChat_131(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_132
forward Hooked_OnState_132(playerid);
public Hooked_OnState_132(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTimer
    #undef OnTimer
#endif
#define OnTimer Hooked_OnTimer_133
forward Hooked_OnTimer_133(playerid);
public Hooked_OnTimer_133(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_134
forward Hooked_OnDialog_134(playerid);
public Hooked_OnDialog_134(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_135
forward Hooked_OnCheckpoint_135(playerid);
public Hooked_OnCheckpoint_135(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_136
forward Hooked_OnZone_136(playerid);
public Hooked_OnZone_136(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_137
forward Hooked_OnInventory_137(playerid);
public Hooked_OnInventory_137(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_138
forward Hooked_OnPlayer_138(playerid);
public Hooked_OnPlayer_138(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_139
forward Hooked_OnState_139(playerid);
public Hooked_OnState_139(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_140
forward Hooked_OnHouse_140(playerid);
public Hooked_OnHouse_140(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_141
forward Hooked_OnFaction_141(playerid);
public Hooked_OnFaction_141(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_142
forward Hooked_OnTeam_142(playerid);
public Hooked_OnTeam_142(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnScore
    #undef OnScore
#endif
#define OnScore Hooked_OnScore_143
forward Hooked_OnScore_143(playerid);
public Hooked_OnScore_143(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_144
forward Hooked_OnZone_144(playerid);
public Hooked_OnZone_144(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_145
forward Hooked_OnMarker_145(playerid);
public Hooked_OnMarker_145(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_146
forward Hooked_OnInventory_146(playerid);
public Hooked_OnInventory_146(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_147
forward Hooked_OnInventory_147(playerid);
public Hooked_OnInventory_147(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_148
forward Hooked_OnCheckpoint_148(playerid);
public Hooked_OnCheckpoint_148(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_149
forward Hooked_OnObject_149(playerid);
public Hooked_OnObject_149(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_150
forward Hooked_OnZone_150(playerid);
public Hooked_OnZone_150(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMoney
    #undef OnMoney
#endif
#define OnMoney Hooked_OnMoney_151
forward Hooked_OnMoney_151(playerid);
public Hooked_OnMoney_151(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_152
forward Hooked_OnInventory_152(playerid);
public Hooked_OnInventory_152(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_153
forward Hooked_OnMenu_153(playerid);
public Hooked_OnMenu_153(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_154
forward Hooked_OnVehicle_154(playerid);
public Hooked_OnVehicle_154(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_155
forward Hooked_OnVehicle_155(playerid);
public Hooked_OnVehicle_155(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_156
forward Hooked_OnFaction_156(playerid);
public Hooked_OnFaction_156(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_157
forward Hooked_OnPosition_157(playerid);
public Hooked_OnPosition_157(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_158
forward Hooked_OnObject_158(playerid);
public Hooked_OnObject_158(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_159
forward Hooked_OnHouse_159(playerid);
public Hooked_OnHouse_159(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_160
forward Hooked_OnText_160(playerid);
public Hooked_OnText_160(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_161
forward Hooked_OnFaction_161(playerid);
public Hooked_OnFaction_161(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_162
forward Hooked_OnZone_162(playerid);
public Hooked_OnZone_162(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_163
forward Hooked_OnInventory_163(playerid);
public Hooked_OnInventory_163(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_164
forward Hooked_OnPlayer_164(playerid);
public Hooked_OnPlayer_164(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_165
forward Hooked_OnCheckpoint_165(playerid);
public Hooked_OnCheckpoint_165(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_166
forward Hooked_OnMenu_166(playerid);
public Hooked_OnMenu_166(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_167
forward Hooked_OnHouse_167(playerid);
public Hooked_OnHouse_167(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMarker
    #undef OnMarker
#endif
#define OnMarker Hooked_OnMarker_168
forward Hooked_OnMarker_168(playerid);
public Hooked_OnMarker_168(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_169
forward Hooked_OnHouse_169(playerid);
public Hooked_OnHouse_169(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_170
forward Hooked_OnHouse_170(playerid);
public Hooked_OnHouse_170(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_171
forward Hooked_OnInventory_171(playerid);
public Hooked_OnInventory_171(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_172
forward Hooked_OnText_172(playerid);
public Hooked_OnText_172(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnMenu
    #undef OnMenu
#endif
#define OnMenu Hooked_OnMenu_173
forward Hooked_OnMenu_173(playerid);
public Hooked_OnMenu_173(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_174
forward Hooked_OnObject_174(playerid);
public Hooked_OnObject_174(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_175
forward Hooked_OnPosition_175(playerid);
public Hooked_OnPosition_175(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_176
forward Hooked_OnDialog_176(playerid);
public Hooked_OnDialog_176(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_177
forward Hooked_OnSkin_177(playerid);
public Hooked_OnSkin_177(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_178
forward Hooked_OnChat_178(playerid);
public Hooked_OnChat_178(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnChat
    #undef OnChat
#endif
#define OnChat Hooked_OnChat_179
forward Hooked_OnChat_179(playerid);
public Hooked_OnChat_179(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_180
forward Hooked_OnHouse_180(playerid);
public Hooked_OnHouse_180(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_181
forward Hooked_OnText_181(playerid);
public Hooked_OnText_181(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_182
forward Hooked_OnZone_182(playerid);
public Hooked_OnZone_182(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_183
forward Hooked_OnCheckpoint_183(playerid);
public Hooked_OnCheckpoint_183(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_184
forward Hooked_OnInventory_184(playerid);
public Hooked_OnInventory_184(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_185
forward Hooked_OnState_185(playerid);
public Hooked_OnState_185(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_186
forward Hooked_OnPlayer_186(playerid);
public Hooked_OnPlayer_186(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_187
forward Hooked_OnPosition_187(playerid);
public Hooked_OnPosition_187(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_188
forward Hooked_OnText_188(playerid);
public Hooked_OnText_188(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_189
forward Hooked_OnHouse_189(playerid);
public Hooked_OnHouse_189(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_190
forward Hooked_OnState_190(playerid);
public Hooked_OnState_190(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_191
forward Hooked_OnPosition_191(playerid);
public Hooked_OnPosition_191(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnState
    #undef OnState
#endif
#define OnState Hooked_OnState_192
forward Hooked_OnState_192(playerid);
public Hooked_OnState_192(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnScore
    #undef OnScore
#endif
#define OnScore Hooked_OnScore_193
forward Hooked_OnScore_193(playerid);
public Hooked_OnScore_193(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPosition
    #undef OnPosition
#endif
#define OnPosition Hooked_OnPosition_194
forward Hooked_OnPosition_194(playerid);
public Hooked_OnPosition_194(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnZone
    #undef OnZone
#endif
#define OnZone Hooked_OnZone_195
forward Hooked_OnZone_195(playerid);
public Hooked_OnZone_195(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnCheckpoint
    #undef OnCheckpoint
#endif
#define OnCheckpoint Hooked_OnCheckpoint_196
forward Hooked_OnCheckpoint_196(playerid);
public Hooked_OnCheckpoint_196(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_197
forward Hooked_OnWeapon_197(playerid);
public Hooked_OnWeapon_197(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnWeapon
    #undef OnWeapon
#endif
#define OnWeapon Hooked_OnWeapon_198
forward Hooked_OnWeapon_198(playerid);
public Hooked_OnWeapon_198(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTimer
    #undef OnTimer
#endif
#define OnTimer Hooked_OnTimer_199
forward Hooked_OnTimer_199(playerid);
public Hooked_OnTimer_199(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnDialog
    #undef OnDialog
#endif
#define OnDialog Hooked_OnDialog_200
forward Hooked_OnDialog_200(playerid);
public Hooked_OnDialog_200(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_201
forward Hooked_OnObject_201(playerid);
public Hooked_OnObject_201(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnVehicle
    #undef OnVehicle
#endif
#define OnVehicle Hooked_OnVehicle_202
forward Hooked_OnVehicle_202(playerid);
public Hooked_OnVehicle_202(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_203
forward Hooked_OnSession_203(playerid);
public Hooked_OnSession_203(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_204
forward Hooked_OnInventory_204(playerid);
public Hooked_OnInventory_204(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnScore
    #undef OnScore
#endif
#define OnScore Hooked_OnScore_205
forward Hooked_OnScore_205(playerid);
public Hooked_OnScore_205(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSession
    #undef OnSession
#endif
#define OnSession Hooked_OnSession_206
forward Hooked_OnSession_206(playerid);
public Hooked_OnSession_206(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnInventory
    #undef OnInventory
#endif
#define OnInventory Hooked_OnInventory_207
forward Hooked_OnInventory_207(playerid);
public Hooked_OnInventory_207(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_208
forward Hooked_OnText_208(playerid);
public Hooked_OnText_208(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnHouse
    #undef OnHouse
#endif
#define OnHouse Hooked_OnHouse_209
forward Hooked_OnHouse_209(playerid);
public Hooked_OnHouse_209(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_210
forward Hooked_OnObject_210(playerid);
public Hooked_OnObject_210(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_211
forward Hooked_OnFaction_211(playerid);
public Hooked_OnFaction_211(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnFaction
    #undef OnFaction
#endif
#define OnFaction Hooked_OnFaction_212
forward Hooked_OnFaction_212(playerid);
public Hooked_OnFaction_212(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnPlayer
    #undef OnPlayer
#endif
#define OnPlayer Hooked_OnPlayer_213
forward Hooked_OnPlayer_213(playerid);
public Hooked_OnPlayer_213(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnTeam
    #undef OnTeam
#endif
#define OnTeam Hooked_OnTeam_214
forward Hooked_OnTeam_214(playerid);
public Hooked_OnTeam_214(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_215
forward Hooked_OnObject_215(playerid);
public Hooked_OnObject_215(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_216
forward Hooked_OnSkin_216(playerid);
public Hooked_OnSkin_216(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_217
forward Hooked_OnSkin_217(playerid);
public Hooked_OnSkin_217(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnSkin
    #undef OnSkin
#endif
#define OnSkin Hooked_OnSkin_218
forward Hooked_OnSkin_218(playerid);
public Hooked_OnSkin_218(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnObject
    #undef OnObject
#endif
#define OnObject Hooked_OnObject_219
forward Hooked_OnObject_219(playerid);
public Hooked_OnObject_219(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

#if defined OnText
    #undef OnText
#endif
#define OnText Hooked_OnText_220
forward Hooked_OnText_220(playerid);
public Hooked_OnText_220(playerid) {
    new value = CLAMP(playerid, 0, MAX_ENTITIES);
    new squared = DOUBLE_SQR(value);
    new longer = LONG_MACRO(value);
    return squared + longer;
}

