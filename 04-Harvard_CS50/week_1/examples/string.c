#include <stdio.h>
#include "../lib/cs50.h"

int main(void)
{
	string answer = get_string("What's your name?\n");
	printf("hello, %s\n", answer);
}

// compile with this command
// clang -o string string.c -lcs50
