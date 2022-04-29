Data Driven Design

----- What is it? -----
--- Definition ---
Data Oriented Design

Data Driven Design


Data Oriented Design Vs Data Driven Design
- Data-Oriented Design is about organizing your data for efficient processing. Especially with respect to cache misses etc. Data-Driven Design on the other hand is about letting data control a lot of the behavior of your program

Data Centric?
- make your data fit your model instead of siloing it based on it's source?



--- Gist ---

Data First approach
Seperates Data from logic
- Stucts and functions are independant of each other
- data is regarded as information that has to be transformed
Logic embraces the Data
- doesn't try to hide the data
- leads to functions that work on arrays
Reorganizes Data according to usage
- if we aren't going to use a piece of information why include it or pack it together?
Avoids Hidden State
No Virtual Calls
- No need for them
Promotes Deep Domain Knowledge

--- History ---
--- Terms ---

-- Other Terms --
Job System/Scheduler (Unity)
- helps assign multithreading of tasks
- declare data used in any job
- declare RW permission on data
- with those can do verification of correctness, better feedback of why multithreading isn't working
- overrides for special cases
- referred to like a baby rust


Memory / Native Containers


----- Why would I use it? -----
--- Reasoning ---

Things that matter in software and games:
1. Deadlines
2. Performance
3. Usability
4. Maintenance
5. Debugability
6. Optimizability
7. Testability
8. Concurrence
9. Stability


Data Oriented Design Principles - by Mike Acton
- The Purpose of all programs, and all parts of those programs, is to transform data from one form to another
- if you don't understand the data, you don't understand the problem
- understand a problem better by understanding the data
- different problems require differnt solutions
- different data = different problem == different solution
- if you don't understand the cost of solving the problem, you don't understand the problem. 
- Everyuthing is a data problem. Including usability, maintenance, debug-ability, etc. Everything.
- Solving problems you don't have creates more problems you definitely do
- Latency and throughput are only the same in sequential systems
- Where there is one there are many, try looking on the time axis
- The more context you have, the better you can make the solution. Don't throw away data you need.
- Understand data access over time, like the whole system
- Reason must prevail
- can't future proof, the world and hardware change, the problems aren't the same
- Solve for transforming the data you have given the constraints of the platform, and nothing else
- it's more of a reminder of first principles than a new idea


Three Big Lies (of Modern Programming Culture, often OOP) - By Mike Acton
1. Software is a platform, different hardware computes different solutions
    - if you think the right way is someway other than what works, then your idea of the right way is wrong
2. Code designed around model of the world
    - hiding data gets in the way of maintence, and gets in the way of understanding the data, which is critical for actually solving the problem
    - world modeling is idealizing the problem, often at the expense of making new problems
3. Code is more important than Data
    - purpose of code is tranforming data in a meaninful way
    - code is not the job, solving the problem is

--- Problems it Solves ---
OOP Marries Data with Operations
- Often in a Black Box kind of way
- Objects end up being used in very different contexts
- hidden state
- the above cause problems with 
    - Performance
    - Scalability
    - Modifiability
    - Testability

Other Problems that are being attempted to solve
- Latentcy 
- Energy Usage
    - Should not require a lot of energy/effort to do small things or unchanging/similar things, it should only expend a lot of energy/effort when there are large or many changes/suprises
- Startup Time
- Smooth Scrolling

--- Examples ---
----- When is it Appropriate To Use? -----
--- Strength & Weakness ---

Strengths:
- Performant
- Optimizable - it's more iterative, less having to redo it from scratch
- Scalability, Easily Extendable
- Reduced Complexity, less moving parts
- Solving the Right/Actual Problem & Understanding those problems
- No Black Box, so experts can coexist 

--- When to Use & When Not to Use ---
----- What Kinds of Things Should it Be Used For? -----
----- How Can it Be Implmented -----
--- Existing Implmenetations ---



----- Links -----
Mike Acton - CCPCon 2014 - Data Oriented Design and C++ (Insomniac Games)
https://www.youtube.com/watch?v=rX0ItVEVjHc

-Mike Acton - GDC 2015 - How to Write Code the Compiler Can Actually Optimize
https://www.youtube.com/watch?v=x61H6qEtK08

-Stoyan Nikolov - CCPCon 2018 - OOP is Dead, Long Live Data-Oriented Design
https://www.youtube.com/watch?v=yy8jQgmhbAU

-Stoyan Nikolov - Code::dive 2018 - Data-oriented Design in Practice
https://www.youtube.com/watch?v=_N5-JjogNXU

Raph Levien - Bay Area Rust Meetup 2018 - Data Oriented GUI in Rust
https://www.youtube.com/watch?v=4YTfxresvS8

-Jonathan Blow - Rust Conf 2018 - Rant: Entity Systems and the Rust Borrow Checker ... or Something
https://www.youtube.com/watch?v=4t1K66dMhWk

Mike Acton - WeAreDevs Berlin 2019 - Building a Data-Oriented Future
https://www.youtube.com/watch?v=u8B3j8rqYMw


Sources
https://gamesfromwithin.com/data-oriented-design

https://www.gamedeveloper.com/programming/opinion-what-you-need-to-give-up-when-going-data-oriented

https://www.richardlord.net/blog/ecs/why-use-an-entity-framework.html

https://chris-granger.com/2012/12/11/anatomy-of-a-knockout/

https://www.sebaslab.com/entity-component-system-design-to-achieve-true-inversion-of-flow-control/


Book
- Domain Driven Design

