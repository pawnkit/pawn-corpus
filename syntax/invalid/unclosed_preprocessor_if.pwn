#define FEATURE_X

#if defined FEATURE_X
stock FeatureFunction()
{
    return 1;
}
#else
stock FeatureFunction()
{
    return 0;
}

main()
{
    return FeatureFunction();
}
