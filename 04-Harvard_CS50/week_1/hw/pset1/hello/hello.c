#include <stdio.h>
#include "../../../../lib/cs50.h"

string name = get_string("What is your name?\n");

int main(void)
{
	printf("hello, %s\n", name);
}