stock ItemType:DefineItemType(a, b, c, d)
{
    return 1;
}

Test:DefineItemType()
{
    new ItemType:value = DefineItemType("a", "b", 1, 1);
    return _:value;
}
