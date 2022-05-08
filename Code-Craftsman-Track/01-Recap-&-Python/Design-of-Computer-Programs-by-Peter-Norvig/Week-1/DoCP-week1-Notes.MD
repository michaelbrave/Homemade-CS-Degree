Design of Computer Programs by Peter Norvig - https://classroom.udacity.com/courses/cs212

4/15/2022 - On hold due to it using python, also the difficulty seems higher than expected, so I will not be bored doing it later.


----- Intro

This particular class assumes some knowledge of programming previously

This is about the design processs, taking what you know and solving problems

What make good programs, things like;
- Efficiency
- Generality
- Correctness

A process of how to think about design, not knowing what the problem is and then thinnking through to a solution

I believe this is in python, it wasn't explicity said anywhere in the intro though, due to this I'm putting it on hold until I'm done with the rest of the HtDP stuff.

-----

Style techniques, you may do it differently, but he shows his own style as an example, hopefully to help teach techniques
Seems he favors a more functional style? Partially in hopes to introduce new ideas.

learn first by observing, then trying it yourself, then teaching it to another

The questions in this class are meant to be hard, but in a fun way

-----

Outlining The Problem

??->Problem->Spec->Code

Example: Making a Poker Program

1. Inventory of the concepts that we're going to have to deal with
Example: Hand has 5 cards, card has rank and suite, hank ranks (n-kind"n of a kind", stright, flush)
Example: Poker(hands)->hand->2pair,n-kind,Straight,Flush

Two ways recommended to represent hands
['js', 'jd','2s','2c''7h']  or [(11,'s'), (11,'d'), (2,'s'), (2,'c'), (7,'h')]
using a set wouldn't work well with wildcards or multiple instances of a card, a string that is searched would quickly outgrow it's usefulness

Poker Function prototype

def poker(hands):
    "Return the best hand: poker([hand,...]) => hand"
    return max