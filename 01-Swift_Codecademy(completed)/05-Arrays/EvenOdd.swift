var list = [2, 4, 3, 6, 1, 9]
var evenSum: Int = 0
var oddSum: Int = 0
// Write your code below 🧮

for item in list {
  if item % 2 == 0 {
    evenSum += item
  }
  else {
    oddSum += item
  }
}
print ("Sum of even numbers is \(evenSum)")
print ("sum of odd numbers is \(oddSum)")