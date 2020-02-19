#is_true = True
#is_also = True

#if is_true or is_also:
#    print("the things is true or also is true")
#elif is_true and is_also:
#    print("things and also are both true")
#elif not(is_true) and is_also:
#    print("it is not true, but it is also")
#else:
#    print("it isn't true or also isn't true")



#comparisons
def max_num(num1, num2, num3):
    if num1 >= num2 and num1 >= num3:
        print("num 1 is the biggest")
        return num1
    elif num2 >= num1 and num2 >= num3:
        print("num 2 is the biggest")
        return num2
    else:
        print("num 3 is the biggest")
        return num3


print(max_num(3, 4, 5))
