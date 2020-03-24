var episode = 2
var villain: String 

// Write your code below 🦹
// Interval Matching
// range is indicated by ... aka the closed range operator

switch episode {
  case 1...3:
    villain = "Emperor Palpatine"
  case 4...6:
    villain = "Darth Vader"
  case 7...9:
    villain = "Kylo Ren"
  default:
    villain = ""
}

print(villain)