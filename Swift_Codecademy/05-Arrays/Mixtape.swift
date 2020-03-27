// Write your code below 📼

// theme is, I have a crush on you

print(".------------------------.")
print("| Hi There Mix    90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape: [String] = [""]
mixtape.append("One Thing - One Direction")
mixtape.append("Into You - Ariana Grande")
mixtape.append("A Thousand Years - Christina Perri")
mixtape.append("Treat You Better - Shawn Mendes")
mixtape.append("Ocean Avenue - Yellowcard")
mixtape.insert("Crush - David Archuleta", at: 1)
mixtape.append("Call Me Maybe - Carly Rae Jepsen")
mixtape.append("Can't Help Falling In Love - Elvis Presley")
mixtape.append("Just A Kiss - Lady Antebellum")
mixtape.append("Closer - Tegan and Sara")
mixtape.remove(at: 0)
//print(mixtape.count)

var counter: Int = 0
var A: String = "Side A"
for item in mixtape {
  if counter == 0 {
    print("\nSide A: \n")
  }
  else if counter == 6
  {
    print("\nSide B: \n")
  }
  counter += 1
  print(counter, ". \(item)")
}