print("We're starting in...")

// Edit the range 1...3 in the loop to use stride() 🏁
for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}

print("GO!")

// the stride function is how to iterate
/*
for num in stride(from: 0, to: 6, by: 2) {
  print(num)
}
//this would return 0 2 4
*/