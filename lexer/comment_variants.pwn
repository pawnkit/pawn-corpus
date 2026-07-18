// Line comment at top of file
stock CommentedFunction() // trailing line comment
{
    /* block comment */
    new x = 1; /* inline block comment */ new y = 2;
    /*
     * multi-line block comment
     * with a second line
     */
    // nested-looking but not actually nested: /* this is still a line comment
    return x + y;
}
/* unterminated-looking star at end of block comment ** still closes below */
