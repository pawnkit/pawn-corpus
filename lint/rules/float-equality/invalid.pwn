stock TestInvalidFloatChecks()
{
    new Float:distance = 5.0;
    new Float:target = 5.0;
    if (distance == target)
    {
        return 1;
    }
    if (distance != target)
    {
        return 0;
    }
    return -1;
}
