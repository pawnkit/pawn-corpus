stock Compute(a,b,c) {
    new result=a+b*c;
    if(result>20){return 20;}
    return result;
}

main() {
    new result=Compute(2,3,4);
    return result==14 ? 0 : 1;
}
