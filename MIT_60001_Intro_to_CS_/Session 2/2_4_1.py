
#Finger exercise: Replace the comment in the following code with a while loop.
#numXs = int(input('How many times should I print the letter X? ')) toPrint = ''
#concatenate X to toPrint numXs times
#print(toPrint)
#It is sometimes convenient to exit a loop without testing the loop condition. Executing a break statement terminates the loop in which it is contained, and transfers control to the code immediately following the loop. For example, the code
#Find a positive integer that is divisible by both 11 and 12 x=1
#while True:
#if x%11 == 0 and x%12 == 0: break
#x=x+1
#print(x, 'is divisible by 11 and 12')
#prints
#132 is divisible by 11 and 12
#If a break statement is executed inside a nested loop (a loop inside another loop), the break will terminate the inner loop.

numXs = int (input('How many times should I print theletter X? '))
toPrint = "hello there"
#concatenate X to toPrint numXs times
while numXs > 0:
    print(toPrint)
    numXs -= 1