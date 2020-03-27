# Finger exercise: Write a program that examines three variables—x, y, and z—and prints the largest odd number among them. If none of them are odd, it should print a message to that effect.

x,y,z = 5,21,7

if (x % 2 == 0) and (y % 2 == 0) and (y % 2 == 0):
    print("None of them are odd")
elif (x % 2 != 0) and (((x > y) and (y % 2 != 0)) or y % 2 == 0) and (((x > z) and (z % 2 != 0)) or z % 2 == 0):
    print (x)
elif (y % 2 != 0) and (((y > x) and (x % 2 != 0)) or x % 2 == 0) and (((y > z) and (z % 2 != 0)) or z % 2 == 0):
    print (y)
elif (z % 2 != 0) and (((z > x) and (y % 2 != 0)) or y % 2 == 0) and (((z > x) and (x % 2 != 0)) or x % 2 == 0):
    print (z)
