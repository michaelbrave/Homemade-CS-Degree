// Write your code below 🥛

var drink: String = "Beer"

for numBottles in stride(from: 99, to: 1, by: -1) {
  print("\(numBottles) more bottles of \(drink) on the wall, \(numBottles) more bottles of \(drink)! \nYou take one down and pass it around... \(numBottles) more bottles of \(drink) on the wall!")
}

print("0 bottles of \(drink) on the wall, 0 bottles of \(drink)! \nGo to the store and buy some more,\n99 bottles of \(drink) on the wall! ")