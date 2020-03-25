// Add the correct logical operator in place of ___ to make each variable true 

let bool1 = (true || false) || false || false 

let bool2 = !true || (false && false || true)

let bool3 = !(false && true) && (false || false)


print(bool1) // should be true
print(bool2) // should be true
print(bool3) // should be false

//true||true&&false&&true
//order of operations is 
// (true||((true&&false) && true))