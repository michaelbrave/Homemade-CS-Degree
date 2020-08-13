## Main Lecture

I wonder why some languages don't use includes like C, what is the benefit of it or the tradeoffs against it?
How do other programs use other programs in python it seems like you just use the file that has it. Would this be less safe?

printf stands for print formatted

I wonder why in the design of C a semicolon was decided to end a line?

a compiler turns source code into machine code

shell prompt = dollar sign = type here

I'm curious about the differences between different compilers like clang and g++

a.out stands for assembly output which is machine code

why ./ what caused that convention?

lack of output is usually a good thing

-o = output for clang

ls = list

rm = remove

mkdir = make directory

string answer = get_string("What's your name?\n");
this will ask for an imput with a prompt and store it in a string variable

printf("hello, %s\n", answer);
to use given answer and display it

a string is a sequence of characters

clang errors will say filename:linenumber:characterarea so it would look like file.c:5:26:

clang -o string string.c -lcs50
the -lcs50 will link the files to the h file

initialize a counter
int counter = 0;

increment a counter by 1
counter = counter + 1;
or
counter += 1 or counter ++

if (x < y)
{
do the thing
}
else
{
do the other thing
}

semicolons end an action, not every line

== looks for equivalent, the equality operator, while = is for assignment

while (true)
{
this would make a forever loop or an infinite loop
}

is a for loop just sugar for a while loop?

for (int i = 0; i < 50; i++)
{

}

why use semicolons to divide variables inside a for loop, why not commas?

printf placeholder examples
%c = char
%f = float
%i = int
%li = long
%s = string

// comments

cd = change directory, by itself will take you to the beginning

#include <unistd.h>
sleep(int);

variables have memory limits and can overflow

## Data Types

int - 4 bytes of memory (32 bits)
-2 by the 31 power
2 by the 31 power -1

unsigned int - it's a qualifier, it modifies the type, no more negative number
less than 4 billion

there are other qualfiers like short, long and const

char - one bype of memory - 8 bits
-128 to 127

A = 65 in ascii

float - real numbers, 4 bytes of memory (32 bits), it can't be as precise with it's decimal parts

double - 8 bytes, (64 bits) so it's more precise than a float

void - isn't a data type but a type, because you can't assign a value to it, it means nothing is being passed, a placeholder for nothing, there is more complexity but not for now

bool - not native to C - true or false

string - not native to C - this is a collection of characters, a series

structs - later

typedefs - later

defined types - later

examples

int number;
char letter;

can do multiple also
int height, width;

it's good practice to only declare variables when you need them, there is some debate about this

redeclaring variables can cause problems

examples how to use
int number;
number = 17;

## Operators

= is the assignment operator

### Arithmetic operators

'+' addition
'-' subtraction
'\*' multiplication
'/' divition
'%' modulus/remainder

it evaluates right to left

x _= 5 is the same as x = x _ 5

x++ or x-- is the same as x+1 or x+=1 or minus as needed

### Boolean expressions

true or false
a non zero value is the same as true

logical operators and relational operators
&& - and - both need to be true
|| - or - at lease one of them needs to be true
! - not/bang - the opposite

< - less than
<= - less than or equal to
'>' - greater than
'>=' - greater than or equal to
== - equality
!= - inequality

## Conditional Statements

make decisions, forks in the road

if (boolean-expression)
{
do this
}
else if (a different thing)
{
do the other thing
}
else
{
default to this thing
}

switch(x)
{
case 1:
thing1;
break;
case 2:
thing2;
break;
default:
thing;
}

if you don't put breaks it will fall through the switch case and do all things after the one that is true
usually use switch for if it's a one of many things

ternary operator - int x = (expr) ? 5 : 6;
this is a shorthand of if/else
after ? is what if it's true after the : is what if it's false

## Loops

lets you repeat code

while() - it will execute so long as the condition is true, easy to make an infinite loop - will continue to do it until it is false

ctrl - c to exit a program

do-while - does the first part once, but will keep doing it as long as the condition is true

for (int i = 0; i < 10; i++) - repeat a specific number of times
for(start; expr; increment)
start gets executed first, then the expression is checked, if it's true execute the body of the loop, then increment. then it checks the expression again until it's no longer true

## Command Line- unix based

ls - short for list, shows files and folders in current directory

often the files listed will be color coded by how they can be interacted

cd - change directory
shorthand for current directory is .
shorthand for parent directory is ..

pwd - present working directory

mkdir name - make directory

cp source destination - copy
cp -r folder folder - recursive copy, to copy all files inside, how to copy a directory

rm file - delete, short for remove
rm -r - to delete recursively, to delete a folder
rm -f - force delete, without asking questions

mv - move or rename

ctrl l - top of the screen

bonus commands to look up:
chmod
rmdir
sudo
ln
man
clear
touch
diff
telnet
