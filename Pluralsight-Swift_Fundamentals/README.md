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