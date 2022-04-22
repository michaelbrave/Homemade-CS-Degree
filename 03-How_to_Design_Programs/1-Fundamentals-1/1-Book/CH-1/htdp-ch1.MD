
Section 1 Fixed-Size Data

Sub Sections
1. Arithmetic
2. Functions and Programs
3. How to Design Programs
4. Intervals, Enumeration, and Itemizations
5. Adding Structure
6. Itemizations and Structures
7. Intermezzo 1: Beginning Student Language

This chapter is meant to be skimmed and come back to it as needed

Terms:
BSL - Basic Student Language - simplified Racket used to teach the beginning part of this book, a functional math based language with support for images as a type


1. ----- Arithmetic
--- Fixed Size Data, Atomic Data
Every Language has data and operations on data

It's the programmer's task to compose these operations into programs that perfrom the desired computations

we (authors of this book) equate "organizing thoughts" with design

Arguments don't have to be numbers they can be expressions (unique to functional languages?)

it's critical for a programmer to know how a language calculates, what steps it takes to do so

primitive operations - are pre defined operations, like the math expressions we use

Programming language are about computing with information

---


(+ 3 4) - this is a prefix notation (math term) where the translation is 3 + 4 how we would normally see it

Some operators on numbers in BSL
+, -, *, /, abs, addl, ceiling, denominator, exact->inexact, expt, floor, gcd, log, max, numerator, quotient, random, remainder, sar, tan

chances are if you remember a math operator BSL likely has it.

BSL distinguishes from exact and inexact numbers by using the #i preface

---


Exercise 1 (pg 36) - Distance of Cortesian point to origin (0,0)

See example code

---


Exercise 2 (pg 38) - add the two lines of string

see example code

---


some string operators

string-length, string -ith, number->string, substring

---


Exercise 3 (pg 40) - find func that inserts "_" at i

see example code

---


Exercise 4 (pg 40) - Delete the ith position of exercise 3

see example code

---


some image operators

circle, ellipse, line, text, triangle, star, image-width, image-height, overlay, overly/xy, overlay/align, empty-scene

---

