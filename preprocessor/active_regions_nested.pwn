#define OUTER 1

#if OUTER
	#define INNER 0
	#if INNER
		stock InactiveValue = 1;
	#else
		stock ActiveValue = 2;
	#endif
#else
	stock InactiveOuter = 3;
#endif

main()
{
	return ActiveValue;
}
