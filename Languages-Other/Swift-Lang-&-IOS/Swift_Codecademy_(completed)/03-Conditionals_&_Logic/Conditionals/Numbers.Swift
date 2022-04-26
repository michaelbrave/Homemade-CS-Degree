var wholeNumber = Int.random(in: 10...20)

// Write your code below 
// where clause, for use with loops and if statements
/*
  //an example
  var randomNumber = Int.random(in: 0...10) //random number gen using a range between 0 and ten

  switch randomNumber {
    case let x where x % 2 == 0:
      print("\(randomNumber) is even")
    case let x where x % 2 == 1:
      print("\(randomNumber) is odd")
    default:
      print("Invalid")
  }
*/

switch wholeNumber {
  case let x where x % 2 == 0:
    print ("Composite")
  case let x where x % 3 == 0:
    print ("Composite")
  default:
    print("Prime")
}
print(wholeNumber)