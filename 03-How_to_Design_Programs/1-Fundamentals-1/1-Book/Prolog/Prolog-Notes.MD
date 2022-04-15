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

------


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

- I think
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