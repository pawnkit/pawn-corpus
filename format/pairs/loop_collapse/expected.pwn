stock CountEvens(limit)
{
    new total = 0;
    for (new i = 0; i < limit; i++)
    {
        if (i % 2 == 0)
        {
            total += i;
        }
    }
    return total;
}
