stock Float:ComputeArea(Float:width, Float:height)
{
    new Float:area = width * height;
    return area;
}

stock TestFloatUsage()
{
    new Float:distance = 3.5;
    new Float:target = Float:(2 + 1);
    return floatround(distance + target);
}
