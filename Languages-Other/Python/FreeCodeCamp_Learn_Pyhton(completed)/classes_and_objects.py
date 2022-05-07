#more or less this is how to create and use custom datatypes
class Student:
    def __init__(self, name, major, gpa, is_on_probation): #this initializes the function, sets up what attributes to have
        self.name = name
        self.major = major
        self.gpa = gpa
        self.is_on_probation = is_on_probation
    # added later for objects_functions
    def on_honor_roll(self):
        if self.gpa >= 3.5:
            return True
        else:
            return False

#if other file
#from Student import Student

student1 = Student("Bob", "Medievil Studies", 4.5, False)

print(student1.name)
