var secretIdentity = "Tony Stark"
var superheroName: String 
 
if secretIdentity == "Tony Stark" {
  superheroName = "Iron Man"
} else if secretIdentity == "Natasha Romanoff" {
  superheroName = "Black Widow" 
} else if secretIdentity == "Prince T'Challa" {
  superheroName = "Black Panther"
} else if secretIdentity == "Thor" {
  superheroName = "Thor"
} else {
  superheroName = "Unknown"
}

// Write your code below
// Switch statements aren't a check instead it's a match found

switch secretIdentity {
  case "Tony Stark":
    superheroName = "Iron Man"
  case "Natasha Romanoff":
    superheroName = "Black Widow"
  case "Prince T'Challa":
    superheroName = "Black Panther"
  case "Thor":
    superheroName = "Thor"
  default:
    superheroName = "Unknown"
}
print(superheroName)