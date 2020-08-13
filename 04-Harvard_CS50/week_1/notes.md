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
