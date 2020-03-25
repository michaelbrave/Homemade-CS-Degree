// Add your code below:

for num in 1...100 {
  switch num {
    case _ where num % 5 == 0 && num % 3 == 0:
      print("FizzBuzz")
    case _ where num % 3 == 0:
      print("Fizz")
    case _ where num % 5 == 0:
      print("Buzz")

    default:
      print(num)
  }
}