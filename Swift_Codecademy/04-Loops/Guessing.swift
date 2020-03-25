var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

// Add your code here ✨

//an exercise in using while loop
while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  print("You guessed \(guess), and the number was \(magicNum)")
}

print("You're right it was \(guess)!")