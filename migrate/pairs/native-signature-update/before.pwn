#define MAX_MESSAGE_LENGTH 144

stock SendTruncatedMessage(playerid, color, const message[])
{
    new buffer[MAX_MESSAGE_LENGTH];
    strmid(buffer, message, 0, MAX_MESSAGE_LENGTH - 1, MAX_MESSAGE_LENGTH);
    return SendClientMessage(playerid, color, buffer);
}
