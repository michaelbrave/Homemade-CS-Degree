//: ## Lesson 8 Exercises - Protocols & Extensions
import UIKit
import Foundation
//: __Problem 1__
//:
//: Below find the class Teenager along with the Babysitter protocol.
//:
//: __1a.__ Edit the Teenager class so that it adopts the Babysitter protocol.
//:
//: __1b.__ Implement the methods necessary for the Teenager class to conform to the Babysitter protocol.
//:
//: __1c.__ Test your code by creating an instance of the Teenager class and calling the methods playCandyland() and read().
enum Level {
    case low
    case medium
    case high
}

class Teenager: Babysitter {  // Solution: 1a
    var age: Int
    let responsible: Bool
    let patience: Level
    
    init(age: Int, responsible: Bool, patience: Level) {
        self.age = age
        self.responsible = responsible
        self.patience = patience
    }
    // Solution: 1b
    func playCandyland(_ numberOfTimes: Int) {
        var count = 0
        while count < numberOfTimes {
            print("We made it to the Candy Castle!")
            count += 1
        }
     }
    
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool {
        print("Of course, we can read \(book) again. \(firstLine)...")
        var isAsleep = asleep
        isAsleep = true
        return isAsleep
    }
}

protocol Babysitter {
    func playCandyland(_ numberOfTimes: Int)
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool
}

// Solution: 1c
var bestBabysitter = Teenager(age: 15, responsible: true, patience: .high)
bestBabysitter.playCandyland(15)
bestBabysitter.read("Yertle the Turtle", firstLine: "On the faraway island of Sala-ma-sond, Yertle the Turtle was king of the pond", asleep: false)

//: __Problem 2__
//:
//:Below find the class Animal along with the Adorable protocol.
//:
//: __2a.__ Edit the Animal class so that it adopts the Adorable protocol.
//:
//: __2b.__ Add the methods and properties necessary for the Animal class to conform to the Adorable protocol.
//:
//: __2c.__ Test your code by creating an instance of the Animal class and calling the methods frolick() and curlIntoSmallBall().
enum Size {
    case tiny, small, medium, large, xLarge
}
protocol Adorable {
    var size: Size { get }
    var softFur: Bool { get }
    
    func frolick()
    func curlIntoSmallBall()
}

var cuteMouse = UIImage(named: "mouseBall")

class Animal: Adorable { //Solution: 2a
    let species: String
    let numberOfLegs: Int
    // Solution: 2b
    var size = Size.tiny
    var softFur = true
    
    init(species: String, numberOfLegs: Int) {
        self.species = species
        self.numberOfLegs = numberOfLegs
    }
//Solution: 2b
    func frolick() {
        print("Watch me jump around in this pile of leaves!")
    }

    func curlIntoSmallBall() {
        print("Who knew nuzzling your own booty was so charming?")
    }
}
var pic = UIImage(named: "frolick.jpg")

//: __Problem 3__
//:
//: Below you'll find the Friend class. The Friend class has implemented the Mover protocol, but the Mover protocol was accidentally deleted.
//:
//: __3a.__
//: Based on what you see in the Friend class, rewrite what you think would be in the Mover protocol.
//:
//: __3b.__ Edit the Friend class so that it adopts the Mover protocol.

// Solution: 3a
protocol Mover {
    var willWorkForPizzaAndBeer: Bool { get }

    func carryCouch() -> String
    func loadVan(_ empty: Bool) -> Bool
}

class Friend: Mover { // Solution: 3b
    var reliability: Int
    var likesYou: Bool
    
    var willWorkForPizzaAndBeer = true
    
    init (reliability: Int, likesYou: Bool, willWorkForPizzaAndBeer: Bool) {
        self.reliability = reliability
        self.likesYou = likesYou
        self.willWorkForPizzaAndBeer = willWorkForPizzaAndBeer
    }
    
    func goHiking() -> String {
        return "Let's go to the Redwoods!"
    }
    
    func comeOverForDinner() -> String {
        return "Your stew is the best!"
    }
    
    func carryCouch() -> String {
        return "Here, I'll walk backwards down the stairs and hold the heavy end."
    }
    
    func loadVan(_ empty: Bool) -> Bool {
        print("We can totally fit a king size bed in here.")
        var isEmpty = empty
        isEmpty = false
        return isEmpty
    }
}

//: __Problem 4__
//:
//: Below you can see that the Squirrel class adopts the Hoarder protocol.
//: Edit the class ScrubJay so that it also conforms to the Hoarder protocol.
struct Tail {
    let lengthInCm: Double
    let bushiness: Int
}

protocol Hoarder {
    func cache(_ foodItem: String) -> String
    func pilfer() -> String
}

class Squirrel: Hoarder {
    let justTryinToGetANut = true
    let bushyTail: Tail
    
    init(bushiness: Int, length: Double) {
        self.bushyTail = Tail(lengthInCm: 20.0, bushiness: 10)
    }
    
    func scurry() -> String {
       return "Run away!"
    }
    
    func cache(_ foodItem: String) -> String {
        return "I'll be back for you later little \(foodItem)s."
    }
    
    func pilfer() -> String {
        return "Jackpot! Your stash is mine!"
    }
    
}

class ScrubJay : Hoarder {
    let wings = 2
    let female: Bool
    
    init(female: Bool) {
        self.female = female
    }
    
    func fly() -> String {
        return "Swoop!"
    }
    // Solution
    func cache(_ foodItem: String) -> String {
        return "I won't forget about you little \(foodItem)s."
    }
    
    func pilfer() -> String {
        return "He he he. More for me!"
    }
    
}

//: __Problem 5__
//:
//: Extensions can be used to adhere to protocols. In the example below, the Roommate class adopts and adheres to the Souschef protocol by way of an extension. Add an extension to the Minion class that  constitutes adopting the DirtyDeeds protocol. 

// Example
protocol Souschef {
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable: String) -> String
}

class Roommate {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}

extension Roommate: Souschef {
    func chop(_ vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(_ vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

//: Extend the Minion class so that it conforms to the DirtyDeeds protocol.
protocol DirtyDeeds {
    func cheat()
    func steal()
}

class Minion {
    var name: String
    
    init(name:String) {
        self.name =  name
    }
}

// Solution 
extension Minion: DirtyDeeds {
    func cheat() {
        print("Mwa ha ha!")
    }
    
    func steal() {
        print("Mwa ha ha!")
    }
}

//: __Problem 6__
//:
//: This extension from the [Coding Explorer Blog](http://www.codingexplorer.com/swift-extensions/) makes it easier to initialize a UIColor object from RGB values that are integers.
//:
//: __6a.__
//: Let's say you were writing an app that frequently used the color, pistachio. Write a class method that returns a UIColor object for which R = 147, G = 197, and B = 114. Add that method to the UIColor extension below.
//:
//: __6b.__
//: Demonstrate how you would call the pistachio() method.

extension UIColor
{
    convenience init(redValue: Int, greenValue: Int, blueValue: Int)
    {
        let newRed   = CGFloat(Double(redValue) / 255.0)
        let newGreen = CGFloat(Double(greenValue) / 255.0)
        let newBlue  = CGFloat(Double(blueValue) / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }

    // Solution: 6a
    class func pistachio() -> UIColor {
        return UIColor(redValue: 147, greenValue: 197, blueValue: 114)
    }
}

// Solution: 6b
UIColor.pistachio()




