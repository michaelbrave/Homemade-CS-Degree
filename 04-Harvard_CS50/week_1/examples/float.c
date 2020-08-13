#include <stdio.h>
#include "../lib/cs50.h"

int main(void)
{
	float price = get_float("what's the price?\n");
	printf("your total is %.2f", price * 1.0625);
}