class Chef:
    def make_chicken(self):
        print("The chef made chicken")
    def make_salad(self):
        print("The chef made some salad")
    def make_special(self):
        print("The chef made the special")

#myChef = Chef()
#myChef.make_chicken()
#myChef.make_special()

#you can inherit the class
class ChineseChef(Chef):
    def make_special(self): #override the previous version inherited
        print("The chef made orange chicken")
    def make_fried_rice(self):
        print("The chef made fried rice")

myChineseChef = ChineseChef()
myChineseChef.make_fried_rice()
myChineseChef.make_special