
Why OOP?
- When you need to make more complex data types than primitives. Like grouping similar pieces of data together
     - an example would be like a chess piece, it has it's type, position, alive/captured status, color, possible moves.
- The first attempted solution would be try to use Arrays, but they can only store data of the same type.
- The second attempted soultion would be structs, which do the job for data but don't store or define functions.
- An object can store the complex data and the function that relates to itself.

-- 


Objects are instances of a class
a class is a template for an object. 

Think of a class as blueprints, and an object as the individual thing built from the blueprint.

good practice is if different objects have different values of a property don't initialize until the object is created itself
- an example the chess piece, a knight - it's color and starting position is not the same, so those values should be initialized when the invidividual knight is created.
- But they do move the same, so they should all have the same movement attributes, all die the same etc

--

Four Main Principles of OOP
1. Encapsulation
2. Abstraction
3. Inheritance
4. Polymorphism


----- Encapsulation

Bundling Data with methods that can operate on that data within a class

it keeps data within the class, so it doesn't interact with outside things directly

Interaction is instead done via the objects methods

Methods are functions defined in a class

-- Getting & Setting Methods

Getting - retrieving information
Setting - changing information

makes it easy to use attributes that depend on one another
- example HP as current health or max health in a game 

useful for making values read only instead of writable only set a getter and not a setter
useful for validation functions

it's generally best to not allow external classes to directly edit an object's attributes, especially in complex programs

information hiding
- each piece should not have access to or rely on the inner workings of other sections of code
- keeping the data of one class hidden from external classes, helps you keep control of your program and prevent it from becoming too complicated.

keeps the programmer in control of access to data
prevents the program from ending up in any strange or unwated states


----- Abstraction

Only show essential details and hide everything else

"as long as you understand the outcome, the process is not very important to you"
- users of your classes should not worry about the inner details of those classes

helpful in spliting up a program into smaller more manageable chunks

split up between interface and implementation
Interface - is the way sections of code can communicate with each other, usually done through methods that each class is able to access
Implmentation - should be hidden within the class, so outcome is understood but internals are not, the how doesn't matter

creating an interface through which classes can interact ensures that each piece can be individually developed
if classes are entangled then one change creates a ripple effect that causes many more changes, not good

Abstraction allows the program to be worked on incrementally and prevents it from becoming entangled and complex
it also helps to determine specific points of contact that can act as an interface between classes, and only worry about the implementation when coding it


----- Inheritance

Inheritance allows classes to be derived from other classes

Superclass and it's children subclass

Access Modifiers - change which classes have access to other classes, methods or attributes
three main modifiers - public, private, protected

Public can be accessed from anywhere in your program, inside the class hierarchy and outside in the rest of the program

Private can only be access from inside the same class that the member is defined
- this is helpful to prevent conflicts with things that would have the same names in different locations

Protected - can be accessed by the class and it's subclasses, it's reliant on hierarchy


----- Polymorphism

Methods that are able to take on many forms

Dynamic polymorphism - occurs during runtime, the method signature is in both a subclass and a superclass
- the methods share the same name but have different implementation
- subclass overrides the superclass version of the method for use by the subclass
- which version of the method is decided by which place in the heirarchy it is called from wether to overrite it or use the old version
- this is why it's called dynamic, the implementation of a method will be used is determined dynamically as the program is run

the benefit is eliminated if statements determining which class was called.

Static Polymorphism - occurs during compile time, mutliple methods with same name but different arguments are defined in the same class
- method overloading - different number of parameters, different types of parameters, different order of parameters
- this feels stupidly messy to me, why would people do this?
- wrong type or amount of arguments will throw an error

Methods take on different forms and allows for methods with the same name to exist
be careful to call the right form of the method you wish to call.


