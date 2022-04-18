The Goal: To build up my foundational knowledge in being a good programmer


Searching for resources that lend themselves toward this toward "better thinking about programming" I've found two highly recomended resources.
1. SICP - The Structure and Interpretation of Computer Programs (The Wizard Book)
2. HtDP - How to Design Programs


The oversimplified gist of the history is that SICP was developed kinda alongside LISP in the mid 80's for MIT, and presupposed one would already be good at things like linear algebra. The first class was taught to already professional programmers and engineers.
- https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs

Later at Northeastern University (which specializes more in work based programming rather than research based programming kinda) they built up an entire curriculim more closely based around foundations and fundamentals for beginners, and based it heavily off of SCIP while addressing the concerns they had with it.

While doing this they created the Racket programming language and DrRacket the IDE used with it. There have been further simplificaions for kids ("How to Design Worlds - Immaginative Programming in DrScheme" by Mathias Felleisen and others, and "Picturing Programs: An Introduction to Computer Programming" by Stephen Bloch) There also seems to have been some more recently releases of similar books in German. 
- https://en.wikipedia.org/wiki/How_to_Design_Programs 


Ultimate Decision:
HtDP - as I am not a child, do not speak German, do not know linear algebra and having coded/programmed before I felt that HtDP will serve my needs. 


Further Reasoning:


So to oversimplify again, HtDP is more beginner friendly in that uses DrRacket as an IDE, starts with a simplified Scheme-Language and doesn't require the heavy math requirements that are expected to be known with SCIP as it was designed to be part of a 5 course track.

I've also had better luck finding newer and (even if old still not outdated - it seems to have been relatively futureproofed by design, such that so long as you can run DrRacket there shouldn't be any major problems of anything being outdated) courses and methods of implementation for it than SICP (which was last taught at MIT in 2007). On the whole it's been a much more seamless experience getting the environment working and finding the resources I need.

I also appreciate that it has been taught to kids at some point, and that level of simplification will help me in my future endevors to teach and this is as much about learning the process of "learning how to code" (so I can help others later), as it is to build better habits and learn to be better at programming. 

I'm also fascinated by the idea of Computer Program Designer and Designers which seems to have been advocated a bit in the 80's and I don't hear much about that anywhere without significant digging, this seems to be something of a continuation of that thought and the most mainstream version of it as well, and I think that thought is valuable and worth exploring deeper. 


Plan Going Forward:
So the plan is to emulate the 5 course track of Northeastern as best I can, and if afterward I still feel lacking I will then move on to SCIP. 


----- 
Important Links:

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
(Most of these are meant to be done with pair programming and peer reviews, I don't have the luxury right now but I have done those things before, and I will try to do what I can to at least get peer review from some friends once a week)

Discrete Mathematics should also be included?
How to prove programs should also be included?

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

-----


Personal Approach for first course. 
I'm going through 5 of the similar courses concurrently, week by week, reading/watching lectures minimum. Those 5 sources are listed by importance as Follows. 

1. The Book - How to Design Programs
- I am working through every assignment and examples
- https://htdp.org/2018-01-06/Book/ 
- I have a physical copy since it helps me to focus

2. The original Class, hereafter reffered to as "OG Class"
- https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html
- I cannot find videos of this even though it was as recently held as a year ago, so the lecture transcripts will have to be enough

3. How to Code: Simple Data "UBCx HtC1x" - EdX
- https://learning.edx.org/course/course-v1:UBCx+HtC1x+2T2017/home
- Older versions of the class have been disapeared, but this one seems active still, maybe in part because I signed up for it in 2017

4. Design of Computer Programs by Peter Norvig
- https://classroom.udacity.com/courses/cs212

5. Istanbul BILGI HtDP 2010
- https://www.youtube.com/playlist?list=PLA_-EWSPTJcuy5VyJyvemxydu16kcAK0S 


My Reasoning

1. This content although brought about in 2010-2012 hitting it's peak popularity in 2014-2015 it's not the kind of stuff that goes out of date and so how old the teaching materials are barely matters. That said the book was updated in 2018.
2. Since I'm kinda solo here the lectures/videos/examples from different sources are helpful, and should I teach this someday (a goal) having more than one reference is helpful.
3. Repetition of material does help it to solidify in memory even if it is a bit slower going at the time. 
4. If I have already mastered the material I would be terribly bored going through it again, so I would likely not be able to get through the supplementary sources if I did not do them concurrently.
5. Most likely I will compile my notes from all of the above and compile them into a course or book at some point, so good/dumb notes and multiple examples and assignments to choose from are not a negative. 



----- Other Githubs I thought were well done if one get's stuck or doesn't like my examples

1. https://github.com/v2chrisb/i2spd/tree/master/HtDP-2
2. https://github.com/emaphis/HtDP2e-solutions
3. https://github.com/janegca/htdp2e

