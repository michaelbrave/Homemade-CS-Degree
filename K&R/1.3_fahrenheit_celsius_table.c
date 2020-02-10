#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20

int main()
{
	float fahr = 0;
	float cels = 0;

	printf("Fahrenheit to Celsius Conversion Table\n");
	for (fahr = LOWER; fahr <= UPPER; fahr = fahr + STEP)
	{
		printf("%3.0f %6.1f\n", fahr, (5.0 / 9.0) * (fahr - 32));
	}
	printf("\n");
	printf("Celsius to Fahrenheit Conversion Table\n");

	for (cels = LOWER; cels <= UPPER; cels = cels + STEP)
	{
		printf("%3.0f %6.1f\n", cels, ((9.0 / 5.0) * (cels)) + (32));
	}

	return (0);
}