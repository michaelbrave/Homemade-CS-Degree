#include <stdio.h>

#define IN	1
#define OUT	0


//program doesn't do anything infinately waiting for input, I will have to revisit it later once I understand getchar() better
int main ()
{
	int c, nl, nw, nc, state;

	state = OUT;
	nl = nw = nc = 0;
	while ((c = getchar()) != EOF)
	{
		++nc;
		if (c == '\n')
			++nl;
		if (c == ' ' || c == '\n' || c == '\t')
			state = OUT;
		else if (state == OUT)
		{
			state = IN;
			++nw;
		}
	}
	 printf("%d %d %d\n", nl, nw, nc);
	 return(0);
}
