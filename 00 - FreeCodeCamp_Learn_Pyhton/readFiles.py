employee_file = open("readFiles.txt", "r+")
#r = read, w = write, a = append, r+ = read and write

#readable tells us if the file is readable
#employee_file.readable()

#read lets makes it outputable
#print(employee_file.read())

#readline does one line
#print(employee_file.readline())

#readlines does all the lines
#print(employee_file.readlines()[1])

#now for writing files
employee_file.write("\nKenobi - Jedi Master")

#for reading, but it doesn't show the changes made
#for employee in employee_file.readlines():
#    print(employee)

#don't forget to close the file
employee_file.close()





