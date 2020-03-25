//we can use break in for loops

var guessedNum = Int.random(in: 1...15)

for counter in 1...15 {
  // Add your code below 🤔
  if counter == guessedNum {
    print("it's \(guessedNum)")
    break
  }
  
  print("Is it \(counter)?")
}