stock Calculate()
{
    new values[] = {2, 4, 6, 8};
    new total;

    for (new index = 0; index < sizeof values; index++)
    {
        total += values[index] * (index + 1);
    }

    switch (total)
    {
        case 60:
        {
            total = (total << 1) / 3;
        }
        default:
        {
            return -1;
        }
    }

    if ((total & 7) == 0)
    {
        total += 5;
    }
    return total;
}

main()
{
    return Calculate();
}
