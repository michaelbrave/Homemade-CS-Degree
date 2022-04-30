How to Design Programs

Link: https://web.archive.org/web/20201210204853/https://course.ccs.neu.edu/cs2510/index.html 

----------

Searching for resources that lend themselves toward this toward "better thinking about programming" I've found two highly recomended resources.
1. SICP - The Structure and Interpretation of Computer Programs (The Wizard Book)
2. HtDP - How to Design Programs

The oversimplified gist of the history is that SICP was developed kinda alongside LISP in the mid 80's for MIT, and presupposed one would already be good at things like linear algebra. The first class was taught to already professional programmers and engineers.
- https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs

Later at Northeastern University (which specializes more in work based programming rather than research based programming kinda) they built up an entire curriculim more closely based around foundations and fundamentals for beginners, and based it heavily off of SCIP while addressing the concerns they had with it.

While doing this they created the Racket programming language and DrRacket the IDE used with it. There have been further simplificaions for kids ("How to Design Worlds - Immaginative Programming in DrScheme" by Mathias Felleisen and others, and "Picturing Programs: An Introduction to Computer Programming" by Stephen Bloch) There also seems to have been some more recently releases of similar books in German. 
- https://en.wikipedia.org/wiki/How_to_Design_Programs 


Ultimate Decision:
HtDP - as I am not a child, do not speak German, do not yet know linear algebra and having coded/programmed before I felt that HtDP will serve my needs. 

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

6. CS 1410-2 and CS2420-20 Computer Science I and II for Hackers University of Utah
- http://www.eng.utah.edu/~cs1410-20/schedule.html
- http://www.eng.utah.edu/~cs2420-20/schedule.html


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

