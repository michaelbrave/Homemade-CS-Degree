lucky_numbers = [4, 8, 15, 16, 23, 42]
friends = ["Bubba", "Tyrese", "Rando", "Jimbo", "Paco", "Jimbo"]
#friends.extend(lucky_numbers)
#friends.append("Creed")
#friends.insert(1, "Kelvin")
#friends.remove("Jimbo")
#friends.clear()
#friends.pop() #last element remove?
friends.sort() #put in alphabetical
print(friends.index("Rando"))
print(friends.count("Jimbo"))
lucky_numbers.reverse()

newlist = friends.copy()

print(newlist)