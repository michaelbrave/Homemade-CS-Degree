#include <stdio.h>
#include "../lib/cs50.h"

int main(void)
{
	int age = get_int("what's your age?\n");
	int days = age * 365;
	printf("you are at least %i days old.\n", days);
}