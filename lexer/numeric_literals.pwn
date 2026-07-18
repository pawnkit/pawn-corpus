stock TestNumericLiterals()
{
    new decimal = 12345;
    new negative = -42;
    new hex = 0x1A2B;
    new binary = 0b1010_1100;
    new withSeparators = 1_000_000;
    new Float:pi = 3.14159;
    new Float:small = 1.5e-3;
    new Float:big = 2.5E+8;
    new ch = 'A';
    return decimal + negative + hex + binary + withSeparators + ch;
}
