#include <stdio.h>
#include "../lib/cs50.h"

int main(void)
{
	char c = get_char("Do you agree?\n");

	if (c == 'Y' || c == 'y')
	{
		printf("Agreed.\n");
	}
	else if (c == 'N' || c == 'n')
	{
		printf("Not agreed.\n");
	}
	else
	{
		printf("hmmn...\n");
	}
}