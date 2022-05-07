#lets you do things when errors occur
#try except, tries first if it's valid it goes, if not it will stop
try:
    number = int(input("Enter a number: "))
    print(number)
except ZeroDivisionError as err:
    print("stop tyring to divide by zero: " + err)
except ValueError:
    print("That wasn't a number")

#you want to specify the except or else it's too broad and will work for all exceptions
#good practice to use specific errors