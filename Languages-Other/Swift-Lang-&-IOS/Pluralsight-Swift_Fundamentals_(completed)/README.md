the course can be found here
https://app.pluralsight.com/library/courses/swift3-fundamentals/table-of-contents

I won't be paying much attention but will take notes

1. Reasons to learn swift other than IOS
    works on linux - server side applications
        nice for consistency
    commercial cloud services
    there are new techniques that can only be found in swift
    there is a difference in problem solving thinking

    swift 3 was a maturity point for compatability, so even though it was unstable it's stable now.

    it's somewhat C style
        blocks of code with curly braces
        comments using two //
        Keywords in lowercase
        if statements and while loops
        uses classes, properties and methods - object oriented

        but without semicolons, without main function
            you could use semicolons, but don't
        focus on simplicity, clarity and readability
        it begins at the top and works it's way down line by line instead of main
        not linking to core libraries
        
    func = functions
    var = variables
        don't have to explicity say the datatype
        but it's not flexible like python
        it's a typesafe language
        once given it's initial value it uses type inference and is now that type


    REPL can be used instead of playgrounds
        some call it interactive mode or interactive shell
        in terminal type swift and return and are now in the REPL, it will do it one line at a time
    
    
    repl is part of lldb
        lldb is also used for debugging
    
    the comilation process
        compiles vs intermediate vs interpreted
        swift is compiled, there is no run time engine

    2. 
        if you don't give it an initial value, it needs to have a type stated.
        variable names start with lowercase letters, but type names start with uppercase letters.

        style is no space between colon and variable name but yes space between colon and type

        core data types:
            Int
            String (unicode aware)
            Double
            Float
            Bool
            UInt
            Character
            and more see Xcode autocomplete
        collection types
            array
            dictionary
            set
        
        we don't need to write the datatype when the inference is correct, remove what is unnessiary

        Constants:
            var makes a variable
            let makes a constant
            since it doesn't vary it's not a variable
            it's slightly different than other languages
                as it's not an additional keywork but a replaced one
            these are highly encouraged for safety
            default to let, only use var when you have to change the value later
            xcode will encourage this
            it allows the compiler to optimize also
        
        variables need to be initialized before we can use it, else it gives an error

        operators:
            most of what we've used in other languages carry over here but there is more also
            = + - * / < > all work the same
            ??
            ...
            ..<
            !
            ?
            ->
            these are different 
            some dont' exist
            ++
            --

        Example:
            let a = 5
            let b = 2

            let myResult = a + b
        what are the types of the constants?
            all int since two ints were added
        
        type(of: myResult) - will display type of var

        there is not implicit converstion between types
            it doesn't automatically convert int to double etc
            some languages even strongly typed have this kind of "Coercion"
            this helps to remove odd edge case possibilities
            so what we would expect to work like multiplying an int by a double will not work in this language
            you have to say you want it to happen
            conversion in swift is explicit
        
        Converting Data:
            Double(score)
            Float(someInt)
            Int(myFloat)
            not all conversions make sense
            bool to double will give an error
            conversions can still lose information
            not all conversions succeed
        well defined data doesn't ensure a value
    another way it's different
    optinal values or optionals
        can't use what hasn't been initialized
        variables and constants are not automatically intialized to default values as some languages do
        this is a safety feature
        there may be times when there is no value and that's ok
        sometimes default values can interfere with your logic see "days until you leave" what would zero mean?

        var name: String?
        this is how we make it optional
        optionals are type safe, it just means it may have nothing
        nil = no value
        nil doesn't mean unitialized, it only means something it that type is optional
        it the variable isn't optional it does need to be initialized
        nil is not the same as null
        this can work for almost everything, objects etc

        when you use these optionals later we need to change the syntax
    using optionals
        you can set them the same as non optionals
        can also set them to nil
        optional + 5 won't work because it could be nil
        think about it like having the optional inside a container we have to unwrap it to get the data out
        but we only want to unwrap when there is a value

        the long way that's easy to understand:
        if optional != nil {
            var unwrappedInt = optionalInt!
        }
        the ! unwraps the optional

        this is called forced unwrapping, but we have to make sure that we check first that is has a value, otherwise it will crash the program

        this is called optional binding
        if let unwrappedInt = optionalInt {
            print(unwrappedInt)
        }

    collections:
        array, dictionary, set
        Arrays are ordered collections of items
        Dictionaries are a collection of key/value pairs
        set are an unordered collection of items
    
        what about linked lists, ques and stacks?
            they just aren't built in to the language like these are
        arrays start with zero
        arrays are type safe, they keep to one type
        they can be variable or constant, mutable or immutable
        var stringArray = ["one", "two", "Three"]
        this is an array literal
        let intArray = [1, 2, 3]
        it won't let you mix types
        you can split lines
        it's ok to leave a trailing comma

        inside playgrounds there are buttons to help visualize larger arrays

        .append() to add a new element to the end
        .remove(at: )
        .removeFirst()
        .removeAll()
        .removeLast()

        this is how we can use an array as a simple stack

        var myStringArray: [String]
        this sets it up before initializing
        var myArray: [] won't work it needs a type
        var myArray: [Int] = [] will work

3. Control Flow

    it's not quite the same as other languages, though it is familiar

    if / else
        more or less similar
        but you don't need parenthesis for simple things
        but keep the curly braces, they are forced always
            this makes the code safer
        the conditions have to be true or false
            testing for zero or not zero won't work
        && is and
        || is or
    switch statements //select, case, when
        switch keyword {
            case 0:
                print("state zero)
            case 1:
                print("state 1")
            default:
                print("not a valid input")
        
        }
        you have to cover all possibilities in a switch
            that's why we have a default clause
        each case must contain executable code, no empty case statements, no fallthrough
        don't need break statements, it's built in it stops once it finds one that works
        but you can write a break statement for break or something if you need to.
        we can have a case that takes multiple values (unique to swift)
        can also check for a range of values (unique to swift)
        ... is a range operator
        start...end - checks for all inbetween
        can use unicode/symbols and emojis
    loops
        there are only three ways to do it in swift
        while loop
            keep going until condition
            no parens needed, curly braces always required
            has to be true or false
        do while loop - changed name to repeat while loop
            repeat {

            } while thing > 0
            will run at least once
        for loops are different
            for in loop replaced it
            it's vague but in a good way
            for i in array {
                print(i)
            }
            for num in 0...10 {
                print(num)
            }
            the item is a temp variable for the loop
            1..<10 will print out 1-9
            ... is a closed range operator
            ..< is a half open range operator
            these sequqnces always go up, not down
            they also go one by one
            stride to and stride though
                do we include the final value or stop without including it
                to stops just short
                through includes the final value
            for number in stride(from: 0, through:256, by:16) {

            }
            for number in stride(from: 100, to: 0, by:-5) {

            }
    string interpolation
        combination of fixed text with variable data
        string concatination
            \(variable)
            put it inside the string
            but you don't have to cast an int to string, it just will do it
            we can write expressions inside the parens
            \(duration / 60)

4. Constructing Code
    creating functions/methods
        usually name on a verbNoun style
        func showMessage (num: Int) {
            print("hello there \(num)")
        }

        call it like
            showMessage(num: 42)
            // you have to give the name when calling it
            you have to use the label of the variable
        func parameters are treated as constants by default
    return types
        return type is given after the name of function
        func basicFunction -> String {
            let str = "hello"
            return str
        }
        this will let it know a function will return a string
    functions without return values
        you can omit the return arrow or -> Void
        nil is not the same as void
        void has no return value
        but omitting is the bettwer style in swift
        what matters is the parameter type and the rturn type, this is a way to describe function types
        see also closures
    when a function returns a value and we don't care
        the compiler won't like it and will give a warning
        but you can use _ to ignore a thing or suppress it.
        can use it instead of the name of the argument too
        can do it on the sending or receiving end
            this isn't a swift style though
        swift isn't about simplicity but rather clarity
        it's especially important when calling the function, so it makes sense to understand, and so it's readable
        but the names don't have to line up?
            if you give it two names in the recieving
            the first one is argument label, being recieved
            the second is the parameter name, name to use inside the function
        you don't need to always name all functions with a verb, espeically if it's a simple thing like something that returns a simple number
        getDifference is less good than difference
        it's also ok to remove redundancy in the names
            example: showMessage(message:) could instead be show(message:)
            could I name two funcs show then?
        instead of typeof() it's type(of:)
        see also stride(to) and stride(through)

5. data types
    defining your own data types
        enums can be one of many options, but only one at a time. 
        Enums are a little different here
            we want to control the types of data
            uppercase datatypes
            defining
        enum MediaType {
            case book
            case movie
            case music
            case game
            case book, movie, music, game
        }

        var itemType: MediaType
        itemType = .book
        itemType = MediaType.book
        these two are the same, but if you put all inside the initial case declaration the .book wouldn't work, if made each case seperately they will
        good to use these with switch statements
            use all of the cases without default so the error will remind you when you forgot something
        enum Temp: String {
            case name = "Bob"
            case hometown = "upland"
        }
        you can also use .rawValue
        Associated Values = customizeable values
        case movie(String)

        case wind(speed: Int) - how to do a secondary value

        later in a switch
        caase.wind(let speed) where speed < 10: - to trigger the case only when a specific thing is met
        how you order cases matter, the associated values are optionals also

        Enum Raw Values - look up further
        seems like it can auto assign numbers and things like that so you could reference things like which number of planets is earth from the sun

        associated values don't have to be the same types
        case movie(String)
        case music(Int)

        MediaType = .move("Comedy")
        in switch
        case .move(let genre):
    structs
        structs are more than containers
        Strings and other data types are actually structs
        more powerful than most languages
        struct Movie {
            var title: String

        }
        these variables are called properties of the struct
        uses a memberwise initializer
        you have to fill in the default values when you initialize

        when you make many of the same kind of struct these are called instances

        non functions in structs are calle property, functions in structs are called methods
        this is universal terminology between enums, classes and structs

        difference between struct and classes
        structs don't use inheritance
        value types (struct) vs reference types (classes)
    dictionaries / maps / associated arrays / symbol table
        it's like an array but instead of being numbered starting with zero it had a key(words as labels)
        it could be an out of sequence thing too
        you can have duplicate values but not duplicate keys
        keys are one type, values are one type(like int)

        but you need to know what am I using to find it and what do I expect to get out of it.
        "Key": "Value",
        it would type infer this as strings for both

        this is how to make an empty one
        var dictionary: [Int: String]

        requesting form dictioonary is an optional, treat it as such
        you check if there is a key

        this will add or change whats in the dictionary
        airline["DVA"] = "Discovery Airlines"
        so if DVA existed in the key it would update, if it didn't exist it would add it

        A dictionary is an unordered colleciton

        if you set a key to nil it will remove both the key and the value

        you can iterate dictionaries like other things, but keep in mind that they are unordered
        for(key, value) in airlines {
            print(value)
        }
        keep the names in the for statement the same as what was used
        this is a tuple, which most other languages don't have
    tuples
        small quick groupings of values
        (value1, value2)
        you can use this to allow a function to return two types
        if you do this you can name the two parts of the tuple that will be returned
        you have to return the parts in correct order
        func randomAlbum() -> (albumTitle: String, length: Int)

        cn all it later 
        print(result.albumTitle)

        you can recieve the returned values individually
        let (nextTitle, lenthy) = randomAlbum()
        these would act as seperate variables
        handy for listing key/value of dictionaries
        these are quick things, if you find yourself reusing a lot make a struct

        
6. Closures
    this is a bit more different than other languages
    steep learning curve, but not a lot of items on it

    you kind of need to understand closures on the whole to make sense of it, so it's ok if you don't get it at first. It's also not super useful until you know all the pieces. 

    closures aren't complicated, it just takes a bit to wrap your head around it. 

    good for: sorting, filtering, animation, data fetching, or task specific like IOS best way to pull up a window

    closres let us take lines of code and group it together to use elsewhere in our program

    this is kind of link functions, but without a name
    it doesn't have or need a name
    functions are blocks of code you want to call
    closures are blocks of code you want to pass
    most of the time you would be using the standard library or device specific things
    things that take closures as passing arguments are built to accept lines of code instead of variables
    it lets us use prewritten behavior

    other languages call this blocks, or lambdas, or func literals or anonymous functions. Not all the same but similar concepts

    ideal situation, you don't want to write your own sorting algos
    if you look at array in the documentation toward the bottom ther eare things like inspecting an array, finding elements, but we want to look at the contains method
    it looks like this
    func contains(where: (Element) -> Bool) -> Bool
    this is what it looks like when a method accepts a closure. 
    this one needs code that would return a bool
    see also reodering elements of array
    sort method is destructive
    sorted would be non destructive
    sorted(by: (Element, Element) -> Bool) -> [Element]
    we pass it two elements (books) and it compares them and returns a bool, so for example alphabetical
    it's asking "are these in the right order?"
    if firstBook.readingAge <= secondBook.readingAge

    might be easy to start with a normal function that you can simplify down

    a functin is a closer with a name
    so you could pass the function name as the argument if you want, or the code of the function so long as it meets the requirements

    if you aren't going to use the function again elsewhere then it's too much, this is why we have closures

    you can put the parameters and return type inside the curly braces
    the word in will seperate it form the rest of the code.

    {
        (firstBook: Book, secondBook: Book) -> Bool
        in
        code here
    }

    put the whole thing curly braces and all into the argument of the method

    but we can do better, we can shorten this a lot
    the parameters and return types are extra now
    the in keyword is extra now
    replace the names with $0 or $1 etc
    this represents the variable it's searching for
    if the closure is the only argument you can put it outsdie the method call
    this is called a trailing closure
    {return $0.readingAge <= $1.readingAge}
    if it's a single line that only returns something we don't need the return
    {$0.readingAge <= $1.readingAge}
    so that works

    you can add other things too
    {$0.readingAge.uppercased <= $1.readingAge.uppercased}

    can use it to whittle down too
    {$0.readingAge < 10}
    to only return the ones that are for the under 10 age group as an example

7. Classes and Objects

    class
        class Appliance {
            //properties
            var thing: String
        }
        thse are instance level properties of the class, temporary variables
        we wither provide an initializer or default values for the variables, or make them optionals
        use self to refer the current instance of a class
        technically you don't need to write self, but it could be suseful

        var kettle = Appliance()
        this is how to call it
        kettle.model = "name of model"
        kettle.getDetails() - to call a funciton in the class

    initialization
        default values is the easy way or we can initialize
        init() {
            self.name = "default"
            self.age = "0"

        }
        it's ok not to initialize optionals
        you can make multiple inits, but they need different paramaters so as to tell them apart
        deinitializer, leave empty?
        deinit {

        }
        use this for releasing memory code if you need to
        you can only have one deinit
        you can't make a deinit for a struct, only for classes. 
        ARC memory keeps track of what is in use or not

    structs
        structs are more powerful in swift
        they can have methods and initializers
        very similar to classes
        memberwise initializer is the default one, or you can write your own
        but with classes you have to make your own init method.
        structs don't do inheritance
        structs are value types, classes are reference types
        when you make an instance of a struct and assign it or pass it, it is duplicated
        but with a class it is referenced, it's not copied, changes will change the original object
        this is part of why functions paramaters are always constants
        === is the identity operator it only works with classes, it's asking if they are the same instance and not just identical info
        you could make the class a constant when you make it, you could chang the internals if it's a constant and the internals are vars, so set them appropriately as you need.
        many people use the word instance instead of class or struct as it can refere to both
    Inheritance
        : represents a type of - relationship
        toaster is a type of appliance
        class Toaster: Appliance {}
        instead of parent child, we say superclass and subclass
        there is no universal base class to inherit from in swift unlick some languages
        the point of inheriting is to change existing behavior
        you will need to initialize or default any new properties added.
        override init ()
        override will let us modify inherited behavior
        if it's only initializing new things then it will merely add to it instead of replacing

        if I want to call from subclass to the superclass use super
        super.init()
        flipside if I want to prevent something being ovewrittend add final to the variable
        you can also add final to the class as a whole
        final class Appliance {}

        we don't use classes and inheritance much in swift, it's useful but it's not core instead we use protocols, delegations and extensions

    Extensions
        allow us to add new methods and properties to existing types without inheritance
        this also works with structs and enums
        we can use this with things that aren't even ours
        we can extend the String type for example
        extension String {
            func removeSpaces() -> String {
                let filteredCharacters = self.filter {$0 != " "}
                return String(filteredCharacters)
            }
        }
        now we can use this on any string. 
        print(album.removeSpaces())

        extensions are always adding things, not removing or overwriting
    Storred Properties
        the variables stored in classes are called stored properties and keep their own values for each instance
        usually this is what we mean when we say properties
        but sometimes it's computer genereated
        this is true of structs too
        a computer property looks like a normal one except instead of providing a vaue we add a codeblock with get and set, often only get
        if only get it's a read only property
        var score: Int {
            get {
                return (enemiesDestryed * 1000) + bonus + (livesRemaining * 5000)
            }
            set {
                print("You passin in \(newValue) but I'm going to ignore it")
            }
        }
        this lets us act like this data belongs to the player
        print("The final score is: \(newPlayer.score)")
        to set/change it
        newPlayer.score = 1250000
        if there is only one line of code in the get area you can just put the line of code, don't have to put get, just put it inside the {}
        it will be read only, but it's not a constant
        it has to be var because it is adding from other places, though you can't change it from other places
8. Introducing protocols
    protocols
        sometimes people use inhertiance to standardize a behavior, protocols can standardize a behavior without having to inherit
        set of rules, or code of behavior, what do you have to do and in what order
        certain things expected, rules that need to be followed to do something that is already going on
        simple list of methods and properties
        this can be general puprose or app specific
        loading and saving data, or making dynamic interfaces
        use premade before we start writing them
        CustomStringConvertable is part of the standard library
        look at protocl requirements in docs
        it doesn't do anything but require a description
        class Player: CustomStringConvertable {}
        class NewClass: SuperClass, Protocol {}
        you can only inherit from one superclass but you can inherit from multiple protocols
        
        but for the protocol you need to include it's requirements
        for that particular protocol include
        var description: String = {
            code here that could be a more apt description
            a custom one
        }

        it will now fully integrate that custom thing

        a protocol is a list of necissary properties
        protocol MyProtocol {
            func showMessage()
            var name: String {get set}
        }
        so it needs to include something called showMessage
        and it needs to have a string var called name, but we label it here with a get/set to make it read/write

        adopt and conform
        adopt protocol x, conformed protocol y
        adopt is when we use a protocol
        conformed is when we do what the protocol asked
        (these are kind of like interfaces with java)
        this was inherited form objective-C

    error handling
        there are three parts to error handling
        1. define it
        2. throw it - where and when can it happen
        3. handle it - what to do about it?
        usually there is a standard error type
        swift doesn't have a built in error struct
        you can build it yourself and define it yourself
        they don't have to inherit or anything
        enum could be a good choice here
        completely up to you
        enum ServerError: Error {
            case noConnection
        }
        this new type is an error that is meant to throw
        func checkStatus(serverNumber: Int) throws -> String {
            switch serverNumber {
                case 1:
                    print("You have no connection")
                    throw ServerError.noConnection
            }
        }
        have to include throws to let it know that it will be doing errors

        to call a function that cna throw errors we have to do it differently
        do {
           let result = try checkStatus(serverNumber: 1)

        } catch {

        }
        you have to include the try in the do catch statement
        you can have multiple catch blocks for more specific errors
        unlike switch it doesn't have to be exhaustive
        its good practice to leave a generic one at the end

        there is a more consciese way 
        use try?
        if let result = try? checkStatus(serverNumber: 1)
        look up if let statements, and let statements

    Guard and defer
        these are control flow statements kind of liek if else

        guard is a lot like an if else statment and usually has an else with it
        guard itemsRequested < itemsInStock else {}
        it's meant for several optional parameters
        did we actually get all the parameters
        usually we would check with a bunch of if's to look for empty variables
        or we could use a guard statement
        guard condition-I-need-to-be-true else {

        }
        so if it's true it won't run
        guard let unwrappedVal = optionalVal else {}
        so it's kind of like (if these variables aren't empty go ahead)
        you need a hard else statement, because you are describing what you need to be true

        usually guards can be seen at the top to protect against empty things

        guard let is similar to an if let
        guard let unwrappedName = optionalName else {}
        if things are returning the same thing you can seperate them by commas

        defer keyword
        not unusual to have a method that needs to open something and be able to close it

        defer {

        }
        it will be called just before

        look up defer statements


























