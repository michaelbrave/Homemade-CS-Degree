How to Code: Simple Data Edx "UBCx HtC1x" - https://learning.edx.org/course/course-v1:UBCx+HtC1x+2T2017/home



---- Week 1 - How to Code Simple Data - Section 1a BSL

--- Expressions & Evaluation:

(first shows to to use DrRacket and to use the BSL - Beginning Student Language)

BSL Syntax

simple examples
(+ 3 4) - will add 3 + 4, seems + is a premade math function that is being called that is fed two numbers and outputs the answer
(/ 12 (* 2 3)) - 2x3(6) / 12 = 2
- these are called primitive calls?
- +-/* are operators
- the numbers are operands
- order of operations is left to right and most internal parens first then outward until simplifies into values

Order of operations Example:
(+ 2 (* 3 4) (- (+ 1 2) 3))
(+ 2 12      (- (+ 1 2) 3))
(+ 2 12      (- 3       3))
(+ 2 12      0            )
14

; in front of a line comments it out

(sqr 3) - squares the number
(sqrt 16) - produces square root of number

-- Exercise 1 - expressions part 1
- See pythag-starter.rkt in DrRacket
- find the missing length of a triangle where 2 sides length is given and the third is unknown
- write a BSL expression that produces the value of ? for the triangle wheere two sides have lengths of 3 and 4

#i - means it's not an accurate number but close


--- Strings & Images
-- Strings

like most languages quote marks are used to denote strings "this is a string"

(string-append "hello there" " " "general kenobi") - will combine the two strings

numbers as strings will not add like they would if numbers "124" won't work like 124

(string-length "apple") - will return the number of characters in a string

(substring "Caribou" 2 4) - will remove and return characters between 2-4, keep in mind it uses zero based indexing
- so it would return "ri"
- "0123456"
- "Caribou"
(substring "Caribou" 0 3)
- will return "Car"

-- Images
(require 2htdp/image) - put at top of file to show it requires the library

(circle 10 "solid" "red") - makes a circle, radius in pixels, style, color
(rectangle 30 60 "outline" "blue") - makes a rectangle, width, length, style, color
(text "hello" 24 "orange") - produces an image of the font in that color

(above  
    (circle 10 "solid" "red")
    (circle 20 "solid" "yellow")
    (circle 30 "solid" "blue")
    )
- above stacks the images, like the first one prints, then the second, but alligns them centered
- beside is simalr but horizontal
- overlay is similar, but overlay stacks them in an overlap instead of a stack


--- Constant Definitions

example:
(define WIDTH 400) - (define <name> <expression>) - The expression can be a function/expresison not just a number
(define HEIGHT 600)  - why in all caps?

(* WIDTH HEIGHT) translates to (* 400 600)

works with images etc - unique to BSL, most languages don't, no example here see racket code examples in DrRacket

(rotate -10 CAT) - would rotate the image of a cat 10 degrees

(define RCAT (rotate -10 CAT)) - so we can call that expression using the name RCAT


--- Function Definitions

can produce a different value each time they are run, based on input
helps us prevent the same code twice etc
functions exist in math, parameters for vaying values (like solve for x), the unchaning part is the function

Example:
(define (bulb c)
    (circle 40 "solid" c)
)

(above
    (bulb "red")
    (bulb "yello")
    (bulb "green")) - will make a traffic light looking style of stacked circles using what was defined in the lines above


Recomended Reading
1.  Language Notes - Saved as PDF from site as BSL-Lang-How-to-code-simple-data.pdf


Making a function:
(define (<funcname> <Param1name>...)
    <bodyexpression>)

calling a function:
(<name-of-defined-function> <expression>...) - expression could also be called an operand

Evaluating a function call:
- first reduce operands to values (aka arguments)
- replace function call by body of functions in which every occurance of paramenters are replaced by corresponding argument

this is similar to order of operations earlier

Example:
(bulb (string-append "re" "d"))
would work as so
1. it recognizes the bulb function previously defined, but needs to solve the argument inside the parens
2. solves the argument (string-append "re" "d") returning with "red" which is a viable option for bulb
3. fills in from and replaces the bulb call with the body of the function (circle 40 "solid" c) replacing c with "red" as was defined when bulb was defined
4. outputs expected result, a red circle with a 40 degree pixel radius


--- Boolians and if Expressions

true false questions are fundamental
if produces different values based on the answer to a true false question

boolean values = true or false
if you run them you get the value themselves

(> WIDTH HEIGHT) - > is a predicate, which is a primitive or function that prouduce a boolean value
(>= 1 1) - would return true
(> 3 9) - would return false, it's asking is 3 greater than 9
(string=? "foo" "bar") - returns false

if expressions
(if <expression> - question that must produce boolean
    <expression> - true answer
    <expression> - false answer
)

Example:
(if (< (image-width I1) (image-height I1))
    "tall"
    "wide"
)

Evaluating if Expressions:
1. question expresison, reduce operands to values - if the question in expression is not a value evaluate it, and replace with value
2. if question is true, replace entire if expression with true answer expression so (< 20 10), would now be false
3. if the question is false, replace with false answer, if true replace3 with true answer
4. return the correct answer, if value other than true or false produce an error

