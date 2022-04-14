----- Collection of All Lecture notes from various Classes -----

Doing concurrently, learning from multiple courses that cover the same topic

Class 1 Sources:

1. OG Class - https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html

2. How to Code: Simple Data Edx "UBCx HtC1x" - https://learning.edx.org/course/course-v1:UBCx+HtC1x+2T2017/home

3. Design of Computer Programs by Peter Norvig - https://classroom.udacity.com/courses/cs212

4. Systemic Program Design - https://www.youtube.com/channel/UC7dEjIUwSxSNcW4PqNRQW8w

5. Turkish HtDP 2010 - https://www.youtube.com/playlist?list=PLA_-EWSPTJcuy5VyJyvemxydu16kcAK0S 

-----

Week 1 OG Class Lecture Notes:
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

Week 1 - How to Code Simple Data

Expressions:

(first shows to to use DrRacket and to use the BSL - Beginning Student Language)

BSL Syntax

simple examples
(+ 3 4) - will add 3 + 4, seems + is a premade math function that is being called that is fed two numbers and outputs the answer
(/ 12 (* 2 3)) - 2x3(6) / 12 = 2

; in front of a line comments it out

(sqr 3) - squares the number
(sqrt 16) - produces square root of number

-- Exercise 1
- See pythag-starter.rkt in DrRacket
- find the missing length of a triangle where 2 sides length is given and the third is unknown
- write a BSL expression that produces the value of ? for the triangle wheere two sides have lengths of 3 and 4


