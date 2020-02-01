# Finger exercise: Write a program that examines three variables—x, y, and z—and prints the largest odd number among them. If none of them are odd, it should print a message to that effect.

x,y,z = 4,1,6

if x % 2 == 0:
    if y % 2 == 0:
        if z % 2 == 0:
            print ("None of them are odd")
        else:
            print (z)
    elif y > z or z % 2 == 0:
        print (y)
    else:
        print (z)
elif y % 2 == 0:
    if z % 2 == 0 or x > z:
        print (x)
    else:
        print (z)
elif z % 2 == 0:
    if x > y:
        print (x)
    else:
        print (y)
else:
    if x > y and x > z:
        print (x)
    elif y > z:
        print (y)
    else:
        print (z)
