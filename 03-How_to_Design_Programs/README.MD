The book can be found here
https://htdp.org/2018-01-06/Book/

Lecture Notes can be found here
https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html

The Community of Educators who base off this material
https://programbydesign.org/ 

Ideas on how to improve HTDP (Next steps after recursion to oversimplify, dips into data driven design?)
https://patternsinfp.wordpress.com/2018/11/21/how-to-design-co-programs/ 

Slides Overview
https://www.deinprogramm.de/dagstuhl-09153/dokumentation/felleisen.pdf 

In theory most of what is done with Racket/Scheme could be done in Haskell or Elm and I've seen examples of both, maybe when I am more advanced I'll revisit this and write my own tutorial series that reinterprets the book in another language like that. 

-----
It should be noted that this book was designed to be a part 1 of a 4-5 course series. See images in images-figures folder
1. How to Design Programs (Fundamentals 1)
2. Designing with Java (Fundamentals 2)
3. Logic in Computer Science (Reasoning About Well-Designed Code)
4. Object-Oriented Design (Scaling up)
5. Software Development (Putting it all together)
(Most of these are meant to be done with pair programming and peer reviews, I don't have the luxury right now but I have done this before and I will try to do what I can at least for getting peer review from some friends)

Discrete Mathematics should also be included?
How to prove programs shoudl also be included?

--

First Course "How to Design Programs" Objective
1. Learn systemic and explicit design of programs
2. Learn how to do systemic problem solving
3. Understand the complexities of creating well-engineered software
4. it uses a stripped down lisp (BSL beginner student language) to allow for smaller errors and less steep of a learning curve while also not worrying about environment and syntax concerns as much as one would with a standard language. This is closely tied to the IDE (DrRacket or just Racket nowadays), and the concepts of design are much easier to understand without the frustrations that would come wihout using both of these tools. 
(part of this book touches on OOP and I kind of want to dive deeper into functional before moving onto that, so I may break to learn haskell a bit before completing)

link: https://web.archive.org/web/20201210204853/https://course.ccs.neu.edu/cs2510/index.html 
Online Course: https://www.edx.org/course/how-to-code-simple-data 

A Bridge between the two classes?
https://arxiv.org/abs/1306.4713v2 



Second Course "Designing With Java" Objectives
1. Systematically design programs in the context of a real world language
2. incorporate exising libraries into design
3. implment use of type checking, object oriented programming and the idea of "programming via composition of existing building blocks"
4. main point is to implement design (as learned before) while thinking in oop abstractions
(Book Rough Draft - How to Design Classes https://felleisen.org/matthias/HtDC/htdc.pdf)
(I could likely switch the language to C# and learn the same things if I can just find a course outline)

Link: https://web.archive.org/web/20201210204853/https://course.ccs.neu.edu/cs2510/index.html 
Online Course: https://www.edx.org/course/how-to-code-complex-data

Third Course "Logic in Computer Science" Objectives
1. make reasoning about programs explicit
    a. (propositional and first-order) logic
    b. heavily emphasizing structural induction as a proof method for establishing theorems about functions and programs
2. introduce students to tools that assist with this
    a. ACL2 - a proof assistant (there are others?)

Link: https://web.archive.org/web/20190428201834/https://course.ccs.neu.edu/cs2800/index.html

Fourth Course "Object-Oriented Design" Objectives
1. Scaling up of complexity of programs
2. Designing and "Glueing" components
3. Interfaces and checking (I think)
4. Presenting to large groups
(I believe I have a rough draft of this book in pdf form somewhere, will add to repository later)

Link: https://web.archive.org/web/20210415162303/https://course.ccs.neu.edu/cs3500/#%28part._info%29

Fifth Course " Software Development" Objectives
1. Maintenance of Code
2. Why design matters, why logical reasoning matters, why people skills matter
3. Designing/Coding in Parts to Assemble Later and understand the weaknesses of the initial design
4. Fixing code from weeks ago - fixing bugs, adding features, replacing features, subtracting features, commenting better
5. IBM's white room code review process

Link: https://web.archive.org/web/20200219190302/http://www.ccs.neu.edu/home/matthias/4500-f18/index.html 

Things that are missing and could be supplemented
1. Independant projects and exploration (I have many so no worries)
2. How to use a performance debugger to identify hotspots
3. How to Analyze hotspots and their surroundings
4. How to create alternate solutions
5. How to set up relevant performance test suites to easily compare different solutions
6. Programming Safety - seg faults, core dumps, overflows etc
7. Testing
8. Team based programming
9. Software Modeling/mapping/blueprints (like software architecture?)
    a. Recomended Expert - Daniel Jackson https://people.csail.mit.edu/dnj/talks/ 
    b. Recomended Expert - Emina Torlak https://emina.github.io/kodkod/pubs.html 

Recomended Reading
1. https://felleisen.org/matthias/Thoughts/Developing_Developers.html 

-------

Book Preface:

Shown as Fig 1.1 apparently it's the core of thinking about how to design programs, almost like a checklist to reference when one gets stuck on a step. 
Likely the most important part of the book, the distilled wisdom of it in checklist form. I did reword some of it for clarity or simplicity. 

The Steps
1. Problem Analysis & Data Defenitions
    a. Identify information that must be represented
    b. Think about "how is this data represented in this programming language?"
    c. Formulate data definitions
    d. Illustrate with examples
2. Signature, Purpose Statement, Header
    a. State what kind of data the function will use and create
    b. Answer "what does the function compute?"
    c. Define a stub that lives up to the signature (I'm not sure what this means yet, will add later)
3. Function Examples
    a. Work through examples to illustrate the Functions purpose
4. Function Template (this is likely the most important part)
    a. Turn data definitions into an outline of the function
5. Function Defenition (This is the creative part)
    a. Fill in the gaps in the function template
    b. Use a purpose statement and examples
6. Testing
    a. Articulate examples and tests, pass all of those tests and examples
    b. If tests don't pass fix mistakes and repeat until it passes all tests
    c. Tests help to supplement examples to aid in future understanding
7. Bonus - Iterative Refinement
    a. Simplify by removing all the unneeded parts. Do it all over but smarter this time using what was learned
    b. Get user (and developer?) feedback, then refine again based on that feedback. 
    c. Repeat until satisfied

Simplified Steps
1. Analyze a problem statment - usually looks like a math word problem
2. Extract and express it's essence, using abstration
3. Illustrate the essence with examples
4. Make outlines and plans based on Analysis
5. Evaluate results compared to expected outcomes
6. Revise based on failed checks and tests
7. Bonus - Simplify and Iterate based on what's been learned

-----

Week 1 Lecture Notes:
A lot of software survives long past when it should have been replaced (example: banks using cobol programming to this day). 
This creates software rust (my words) or at the minimum tech debt (my words). 
the lesson is: "if your software survives the protype stage then it will survive you"
therefore: "you and your successors will have a huge advantage if you construct this software systematically"

So that's what this class is about, creating software systematically. 

Much like art we have to learn to create without ego and to recieve critiques to become great. 
"as a scientist I count those people as my friends who constantly try to poke a hole into my theories."

"plan top-down, build bottom-up"
What I know is this: 

- someone needs to know where you want to end up 
- this someone must identify essential components 
- and must know how to arrange the construction of these pieces so that you can demo asap

What this means is that someone creates an overview picture, figures out
(crude) dependencies, and identifies runnable milestones. This is called
_top-down planning_ because you start from the big picture and go down to
details. Then it's time to make a plan to build these pieces like a solid
house: 

- foundation first 
- load-carrying walls 
- .. all the way to the roof. 

What you can learn from: 
- pair programming 
  - communicating properly with a partner (see 'log book')
  - working with someone whose skills differ from yours 
  - working with someone whose personality differs from yours 
  - coping with an irresponsible partner (see 'log book')

- presenting your artifacts 
  - presenting code 
  - accepting flaws and errors in your own code that others point out 
  - reacting to such discoveries 

- serving on a review panel 
  - reading code on the fly for a problem you know 
  - discovering problems:
    - gaps in the design
    - failure to match specs
    - bugs 
    - stylistic problems 
    - how to improve your use of your chosen language 

Programming as a people discipline?
people write programs to inform other people of ideas
traditional programming courses teach programming implicitly, with students picking it up via mimicking and experimenting
programming is about coping with complexity in software


Recomended Reading
1. Weinberger's Psychology of Programming (parts of it)
2. Introduction to Algorithms: A Creative Approach by Udi Manber

Books I found that I think may be Relevant
1. Bringing Design to Software (1996) https://hci.stanford.edu/publications/bds/

-----

Prolog Notes:

Logic Statements
if, and, or, not, >, <, =?, 
=? means is the following items identical, true or false?

--- PG10-11

teachpack/library used = dhtdp/image

image related commonds used or given as examples in prolog:
empty-scene - it makes a grid
image-width
image-height
circle 10 "solid" "red" - will make a circle size 10, colored solid red
place-image
overlay() - use it to stack things like circles or boxes, kinda like string-append
above() - similar to overlay
beside() - similar to overlay but places the objects next to each other

images in racket use a grid that starts in the uper left at 0,0 - so it's inverse of normal math, y coord goes downward

--- function example for racket

function definition - Parameter - Body
(define (functionName InputName) BodyExpression)

function application
which function to use - which input to give
(functionName ArgumentExpression)

---

- think
if false (trueAns)(falseAns)

--- pg 18

condition examples

(define (sign X)
    (cond
        [(> X 0) 1]
        [(= X 0) 0]
        [(< X 0) -1]
    )
)

(cond
    [expr1 Result1]
    [expr2 Result2]
)
it's a qustion, if true then replace with, if not next on list

--- final advice of prolog

"programmers create programs for other people to read them in the future"

"a good program reflects the problem statements and it's important concepts"

"good programming is about solving problems systematically and conveying the system within the code"



------ Ch1 



