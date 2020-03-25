// Create your Whale Talk program below:
var input: String = "hello therey"
var output: String = ""

for char in input {
 let lowerChar = char.lowercased()
  switch lowerChar {
    case "a", "i", "o":
      output += lowerChar.uppercased()
    case "e":
      output += "EE"
    case "u":
      output += "UU"
    case "y":
      output += "YYYY"
    default:
      continue
  }
}

print(output)