#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int number;
    int counter;
    int columns;
    int hashcount;

    number = 0;
    printf ("please enter a number less than 23\n");
    if (number < 1)
    {
        scanf("%d", &number);
    }
        counter = 0;
        columns = 1;
        while(columns <= number)
        {
            counter = number - columns;
            hashcount = number - counter;
            while (counter != 0)
            {
                printf(" ");
                counter--;
            }
            while(hashcount != 0)
            {
                printf("#");
                hashcount--;
            }
            printf("\n");
            columns++;
        }
}