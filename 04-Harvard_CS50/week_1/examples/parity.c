#include <stdio.h>
#include "../lib/cs50.h"

int main(void)
{
	int n = get_int("n: ");
	if (n % 2 == 0)
	{
		printf("even\n");
	}
	else
	{
		printf("odd\n");
	}
}