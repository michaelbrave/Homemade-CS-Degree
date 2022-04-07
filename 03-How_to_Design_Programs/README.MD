The book can be found here

https://htdp.org/2018-01-06/Book/

Lecture Notes can be found here
https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html

a similar class maybe worth checking out
http://web.cs.wpi.edu/~cs1102/a08/ 

Preface:

Shows as Fig 1.1 apparently it's the core of thinking about how to design programs, almost like a checklist to reference when one gets stuck on a step. 
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

Week 1 Lecture Notes
A lot of software survives past when it should (example: banks using cobol programming to this day). 
This creates software rust (my words) or at the minimum tech debt (my words). 
the lesson is: "if your software survives the protype stage then it will survive you"
therefore: "you and your successors will have a huge advantage if you construct this software systematically"

So that's what this class is about, creating software systematically. 

Much like art we have to learn to create without ego and to recieve critiques to become great. 
"as a scientist I count those people as my friends who constantly try to poke a hole into my theories."

---

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

---

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

Things Lacking in this coursework to look up later:
1. How to use a performance debugger to identify hotspots
2. How to Analyze hotspots and their surroundings
3. How to create alternate solutions
4. How to set up relevant performance test suites to easily compare different solutions

Recomended Reading
1. https://felleisen.org/matthias/Thoughts/Developing_Developers.html 
2. Weinberger's Psychology of Programming (parts of it)
3. Introduction to Algorithms: A Creative Approach by Udi Manber




Prolog:
