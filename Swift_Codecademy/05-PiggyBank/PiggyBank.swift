var dollars: Double = 0.00
var pesos: Double = 4 //one peso is 0.040 dollars
var pesoRate: Double = 0.04
var reals: Double = 5 //one real is 0.19 dollars
var realRate: Double = 0.19
var soles: Double = 7 //one sol is 0.29 dollars
var solRate: Double = 0.29

dollars = (pesos * pesoRate) + (reals * realRate) + (soles * solRate)

print("you have $\(dollars) dollars")
