Istanbul Bilgi HtDP 2010 - https://www.youtube.com/playlist?list=PLA_-EWSPTJcuy5VyJyvemxydu16kcAK0S 

Don't be misled, the first few min are in turkish, but once the lecture starts it's english. 

I tried to find a copy of the syllabus, but all the links I found are broken. In searching for that I found that the teacher is now a CEO of an AI company in SV.

This coincides with the Prolog of the book.


I'm not sure this adds much more than just working through the book, the examples used are basically pulled from it and the commentary on it is minimal other than similar explanations to that of the book. I'll give week 2 a try as well but if it's more of the same I may quit this one but leave the notes here.


----- Lecture 1 - How to Solve It

Knowledge and habits of how to solve problems - the focus, it's "how to design programs" not just how to code or how to write programs, or syntax of languages.
It's all about "how to solve it" the idea and process of it, of getting things done, learning things, collecting data, analyzing data, putting things together, making abstractions and general rules. But we are trying to understand how we design and how we solve our problems, how we design solutions for our problems. 

Develop analytical tools and habits, so you can solve problems.

This curriculim is heavily based on research from a lot of people, many from prestigious universities.

These techniques of software design are language agnostic, they are principles. 

Once these principles are mastered, learning a new language is just about looking up syntax as needed, and looking it up won't take much time at all.

He References other classes that follow this one or they are modules of this one? hard to tell
1. Discrete Mathematics
2. Method Skills - Practice computational method skills
3. Economic Skils - Important because it teaches how to be critical, critical thinking
    - critical thinking = open minded, examine materials, analyze materials, ask questions - creates a good habit of learning
    - somtimes knowing the type of questions to ask is just as important
    - this allows for a self reliant learning style

Order to Do things
1. Read ahead of time
2. Do Lots of Practice Problems
3. Attend/Watch Lecture
4. Ask Smart Questions, get Smart Answers
5. Do More Practice Problems or Assignments

Use DrRacket so the IDE just kind of gets out of the way, and Lisp so the language gets out of the way, leaving room to learn the actual concepts, like Recursion
He mentions that a lot of professional developers don't actually know how to use or do recursion, so those who take this class would have that advantage even if this is considered a beginner class.


--- Code Examples and explanations
(+ 3 5)

Parens means applying a function, getting arguments and producing an output
+ the operator is the first argument, the function itself
the other parts like (3 5) are the arguments

(cos 0) = 1

cos is a built in operator, a built in function
but you could build your own if you wanted

(modulo 5 2)
Pressing F1 (Ubuntu+DrRacket)(if you know the right name for a built in function) - it will go to help desk and show the docs of that function

help desk format is as follows, example Modulo:
modulo : (integer integer -> integer) - roughly it expects 2 integers and returns an integer, -> shows what will be returned
Purpose: to find the remainder of the division of the first number by the second

You need to understand the data, what kind of data a function uses, what it returns, all of that.

Shows the differnce between string and number types
"7" 7

(number->string 7) = "7"
(number->string "7") = error, expects argument of type <number>

(string-append "name" "thing") = "namething"

-- Nested Applications

(+ 6 (- 4 -2) 6) - solves the iner parens first
1. first it recognizes + as a premade function that accepts numbers
2. it sees 6 as the first number
3. it looks for the second number but comes accross a nested function, so it proceeds to solve that function until it is a number
4. recognizes - as a premade funtion
5. finds first and second number that the - function needs
6. subtracts 4 from -2, returns -6
7. back to original function, it finds that all numbers are the right kind of data, finally it adds them

Atomic Data - the simplest form of data, cant make it simpler, no sub components
Compound Data - it has sub components

(define balloon <image>) - simple identifier for the image
(image-width balloon)
(image-height balloon)

before making a function decide what input will we give it, what output should it create, what's the purpose of it
start with a purpose, like find the area of an image, then determine what imputs it will need to do that - these are design decisions
(define (f img) (* (image-width img) (image-height img))) - f is the name of the function, it takes an image to find the area

do it in a cleaner style
(define (f img)
    (* 
        (image-width img)
        (image-height img)))

to call it
(f img)


(rectangle 50 85 "solid" "pink") - makes a tall pink rectangle
(overlay bottom-img top-img)
(place-image balloon 0 0  (empty-scene 400 400)) - puts the balloon in the top left corner, middle of image in the corner, 0 0 - X Y
can use constants to help up with this, but honestly the stuff I worked through in book is a similar but better example

- esc p and esc n - let you scroll through past commands in DrRacket terminal (lacking a better word)


------ Lecture 2 - Design Principles

Outline
- Built in Data Types
- Function Compositions
- Conditionals


Data
- Numbers, Integers, Doubles, Floats
- Strings
- Boolean
- Images (unique to Racket, more or less)

Goes on a bit about the difference between Pi and 3.14, and potential errors that can come from the difference between them

We differentiate between exact numbers and inexact numbers
Ignore float precision at your peril, engineering can cause accidents, financial errors can destory finances

you should organize, be aware of and control your data
data is just a representation as we deal with problems, which may be different in different cases based on what you need and what you want to do

(test "Hello" 34 "red") - makes an image of the text 34 size font in the color red
(string? ()) - will check if it's a string
(image? ) - will check if it's an image

if you design data you should make functions that can identify and work with that data

Be aware of the Data you use and be aware of what it represents
- We work in a problem domain, like running an accounting program or a physics simulation
- when you program within that problem domain, find the infomarmation you need and deal with to produce answers and solve problems
- then represent information with your own data types
- it's all representation
- at first you are defining and organizing your data

(define balloon <img>) - define is the constructor, this is one use of define

define the pieces that we need over and over again and won't be changing

the examples he goes through are almost the same as the book's prolog

;given a number, returns an image - a function that makes an image of a balloon fall, not seen are the definitions of Width, Height, Scene, Balloon, Time
(define (ffall time) (place-image
                        balloon
                        (/ Width 2)
                        (find-y time)
                        Scene))

;given a number returns a number
(define (find-y time) (* 5 (sqr (/ time 10))))

(animate ffall)
