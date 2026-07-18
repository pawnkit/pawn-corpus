stock bool:IsCloseEnough(Float:a, Float:b)
{
    return floatabs(a - b) < 0.0001;
}

stock TestValidFloatChecks()
{
    new Float:distance = 5.0;
    new Float:target = 5.0;
    return IsCloseEnough(distance, target);
}
