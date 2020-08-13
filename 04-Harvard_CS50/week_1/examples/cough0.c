#include <stdio.h>
#include "../lib/cs50.h"

void cough(int n);

int main(void)
{
	cough(3);
}

void cough(int n)
{
	for (int i = 0; i < n; i++)
	{
		printf("cough\n");
	}
}