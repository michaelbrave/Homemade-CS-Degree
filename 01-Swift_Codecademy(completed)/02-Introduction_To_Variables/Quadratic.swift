var a: Double = 2.0
var b: Double = 5.0
var c: Double = 3.0
var root1: Double
var root2: Double

root1 = (b * b) - (4 * a * c)
root2 = (b * b) - (4 * a * c)
root1 = (b * -1) + root1.squareRoot()
root2 = (b * -1) - root2.squareRoot()
root1 = root1 / (2 * a)
root2 = root2 / (2 * a)
print("Root1 is \(root1)")
print("Root2 is \(root2)")