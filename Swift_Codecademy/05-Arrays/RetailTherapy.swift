var receipt = [12.00, 3.75, 6.50, 19.99]

// Write your code below 🧾

var total: Double = 0.0

for item in receipt {
  total += item
}

total *= 1.08875

print(total)