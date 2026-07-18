new grid[10][10];
new cube[4][4][4] = {{{0, ...}, ...}, ...};
new const lookup[3][2] = {
    {0, 1},
    {2, 3},
    {4, 5}
};

stock FillGrid()
{
    new local[5][5];
    for (new i = 0; i < 5; i++)
    {
        for (new j = 0; j < 5; j++)
        {
            local[i][j] = i * 5 + j;
        }
    }
    return local[4][4];
}
