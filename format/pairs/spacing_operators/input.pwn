stock Compute(a,b,c)
{
    new r=a+b*c;
    new flag=(a>0)&&(b>0);
    r+=c;
    return r&&flag;
}
