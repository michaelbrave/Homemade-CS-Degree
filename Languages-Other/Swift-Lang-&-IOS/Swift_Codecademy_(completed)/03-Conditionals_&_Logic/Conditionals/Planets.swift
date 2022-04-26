var planet = "Pluto"

// Write your code below 🪐
// compound cases, uses multiple values in a single case

switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
    print("Terrestrial planet")
  case "Saturn", "Jupiter", "Uranus", "Neptune":
    print("Jovian planet")
  case "Pluto":
    print("Not a Planet")
  default:
    print("Unknown Planet")
}