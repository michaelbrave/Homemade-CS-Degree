The book can be found here
https://htdp.org/2018-01-06/Book/

The Community of Educators who base off this material
https://programbydesign.org/ 

Ideas on how to improve HTDP (Next steps after recursion to oversimplify, dips into data driven design?)
https://patternsinfp.wordpress.com/2018/11/21/how-to-design-co-programs/ 

Slides Overview of Why teach this way
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

link:  https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html 
Online Course: https://www.edx.org/course/how-to-code-simple-data 

A Bridge between the two classes?
https://arxiv.org/abs/1306.4713v2 

--

Second Course "Designing With Java" Objectives
1. Systematically design programs in the context of a real world language
2. incorporate exising libraries into design
3. implment use of type checking, object oriented programming and the idea of "programming via composition of existing building blocks"
4. main point is to implement design (as learned before) while thinking in oop abstractions
(Book Rough Draft - How to Design Classes https://felleisen.org/matthias/HtDC/htdc.pdf)
(I could likely switch the language to C# and learn the same things if I can just find a course outline)

Link: https://web.archive.org/web/20201210204853/https://course.ccs.neu.edu/cs2510/index.html 
Online Course: https://www.edx.org/course/how-to-code-complex-data

--

Third Course "Logic in Computer Science" Objectives
1. make reasoning about programs explicit
    a. (propositional and first-order) logic
    b. heavily emphasizing structural induction as a proof method for establishing theorems about functions and programs
2. introduce students to tools that assist with this
    a. ACL2 - a proof assistant (there are others?)

Link: https://web.archive.org/web/20190428201834/https://course.ccs.neu.edu/cs2800/index.html

--

Fourth Course "Object-Oriented Design" Objectives
1. Scaling up of complexity of programs
2. Designing and "Glueing" components
3. Interfaces and checking (I think)
4. Presenting to large groups
(I believe I have a rough draft of this book in pdf form somewhere, will add to repository later)

Link: https://web.archive.org/web/20210415162303/https://course.ccs.neu.edu/cs3500/#%28part._info%29

--

Fifth Course " Software Development" Objectives
1. Maintenance of Code
2. Why design matters, why logical reasoning matters, why people skills matter
3. Designing/Coding in Parts to Assemble Later and understand the weaknesses of the initial design
4. Fixing code from weeks ago - fixing bugs, adding features, replacing features, subtracting features, commenting better
5. IBM's white room code review process

Link: https://web.archive.org/web/20200219190302/http://www.ccs.neu.edu/home/matthias/4500-f18/index.html 

--

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






