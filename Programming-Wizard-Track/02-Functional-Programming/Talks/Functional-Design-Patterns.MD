NDC - Functional Design Patterns - Scott Wlaschin
Talk Found at https://youtu.be/srQt1NAHYC0

(Most of this I don't quite get, so I'm taking these notes as a kind of reference for things to look up later)

----- Starts the talk

using F# for examples
fshaprforfunandprofit.com - his website

things built in to language = principles
things not built in = patterns?

The oo princeples(like gang of 4) roughly translate to functions in functional programming, but that doesn't mean there are no patterns

- Core Principels of FP design
    - Functions, Types, Composition
- Functions as Parameters
    - Functions as Interfaces
    - Partial Application & Dependency Injection
    - Continuations, Chaining & The Pyramid of Doom
- Monads
    - Error Handling, Async
- Maps
    - Dealing with Wrapped Data
    - Functors
- Monoids
    - Aggregating Data and Operations

part of the barrier to entry is that all the terms are math terms

some patterns are built in depending on language


-- Core Principles

Functions are things, no ditinction between a function and data

Composition is everywhere, think of it like legos

Types are not Classes, more like sets


function is a standalone thing, not attached to a class - like a transition tunnel, something goes in something else comes out

functions can be outputs
functions can be output
functions can be parameters


-- Composition 

ouput of one and glue it together
it's like making a new function out of two smaller functions
- very similar to encapsulation

functions all the way down

lots of low level stuff glued together can make a service

services glued together can make a use case

use cases glued together can make an application

"composition is fractal" you build big things out of small things


-- Types are not Classes - statically typed, not universal

Types is a name for a set of things

set of inputs is a type, set of outputs is a type

types can be composed too, it's pure data no behavior

"algebraic or composable type system"
AND, OR

this is only possible due to behavior being seperated from the data

- like pairs, tuples and records

the AND type can be found in C# but the OR type is not

you build up from small pieces into more complex pieces, his examples were quite good but beyond putting here


--- Designing for Totality

constrain the input - not accepting zero, would become NonZeroInt
- type as documentation

or extend the ouput - if given zero, return None
- this is the option type
- this is type as documentation


-- Design Principle: Use Static Types for Domain Modeling and Documentation
- this only works for statically typed languages, not Clojure and JS

More on designing with types "DDD"
- fsharpforfunandprofit.com/ddd


-- Functions as Parameters

in functional programming, hard coded behavior is just as unsightly as hard coded inputs
- decoupled data from the behavior

example code:
initial
let printList() =
    for i in [1..10] do
        printfn "the number is %i" i

fixed - passing in a function also
let printList anAction aList =
    for i in aList do
        anAction i

Watch his examples of this at 22:47, very good no justice to repeat it here

break code down into what repeats and what is different
- Initial Values
- Common code extracted
- Parameterized action

Paramatized - called fold in F#
- find what is different and pull them out as parameters

look up the collection libraries: fold, map, reduce, collect, etc


-- Function Types are Interfaces
"types provide instant abstraction"

- Single Responsibility Principle, only one reason to change
- Interface Segregation Principle, don't make me depend on things I don't care about
- if the above is taken to the extreme then every interface should have only one method, to avoid accidental dependencies

an interface with only one method is just a function

- compatability instead of inhertiance (I don't quite get it but it feels like piping inputs based on how he explains it)


-- Strategy Pattern

(I don't get it but in part because I'm not as familiar with OO patterns that he is comparing to in the first place)
- basically feed the strategy as a parameter instead of building around it


-- Decorator Pattern 

- (I don't get it, and get more lost as he goes on past the 27:27 mark, come back later)


-- 