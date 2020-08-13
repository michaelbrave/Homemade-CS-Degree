#include <stdio.h>
#include "../lib/cs50.h"

int get_positive_int(void)
{
	int n;
	do
	{
		n = get_int("positive integer: ");
	} while (n < 1);
	return n;
}