stock TestEscapes()
{
    new a[] = "Line one\nLine two";
    new b[] = "Tab\tSeparated";
    new c[] = "Quote: \" backslash: \\";
    new d[] = "Hex: \x41\x42";
    new e = '\n';
    new f = '\'';
    new g[] = !"No escapes \n stay literal";
    return a[0] + b[0] + c[0] + d[0] + e + f + g[0];
}
