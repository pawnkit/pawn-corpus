stock TestPrecedence(a, b, c)
{
    new r1 = a + b * c;
    new r2 = (a + b) * c;
    new r3 = a << 2 | b & 1;
    new r4 = (a == b) ? c : -c;
    new r5 = a > 0 && b > 0 || c > 0;
    new r6 = ~a & (b ^ c);
    r1 += r2 -= r3;
    return r1 + r2 + r3 + r4 + r5 + r6;
}
