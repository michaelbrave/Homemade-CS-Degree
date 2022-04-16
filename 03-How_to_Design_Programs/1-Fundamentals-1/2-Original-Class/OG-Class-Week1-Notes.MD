OG Class - https://web.archive.org/web/20190327161831/http://www.ccs.neu.edu/home/matthias/4500-f18/lectures.html


---- Week 1 - OG Class Lecture "Software Development" Notes:

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

---- Week 1 - OG Class Lecture "Plan Top-Down, Build Bottom Up" Notes:

You have a system of cooperating pieces, need to identify the piecesw, figure out how they interact, sometimes identify more pieces and then plan how to do it and also to actually execute said plan. They recommend planning top down, building bottom up. 

Building a house example:
Architect creates a plan, contractors and construction build it, but problems and unseen issues and changes get recognized while building.
But many of those changes can be implemented because it is being built bottom up. But the initial design by the archict caught and fixed problems too before they happened, or even implemented feedback initially while still in the rough sketch phase.

Waterfall
- Boehm suggested that a delay by one stage would increase the cost of finding anf fixing the flaw by an order of magnitude - I believe this a correct assement, best to solve problems during the cheap prototyping phase before hard things are put into place, a lifetime of design has taught me this, it's why sketches start out rough and cheap, at most costing the price of paper, ink and an hour of someomeones time, but it always reveals a lot, at the minimum assumptions that are held. 
- initially it was assumed that waterfall would have feedback loops at the end of every step, going back and fixing things based on what was learned during that stage, but it seems the industry deviated from this over time. 
- Recomended Reading: The Leprechauns of Software Engineering (https://leanpub.com/leprechauns)
- Rather think of it as a spiral than a cascading waterfall over stairs

Agile
- Test Driven Development, Agile Development, Extreme Programming - at their core they are still variants of agile
- Deployment of software used to difficult, but with the internet it's not what it was. 
- Someone still needs to figure out what kind of software to build. Someone needs to translate this goal into specifications for components. Someone will need to code the specifications. Etc.
- we don't separate coding from testing and specification from testing as much as they once did
- working through examples illuminates the specifications and prepares the coding. We understand that deployment is part of the specification and that extreme shifts in interfaces is unwelcome

--- Our Process Principles

1. Figure out what you want
2. Analyze use cases
3. Identify software components and their possible interactions
4. Plan for a stripped down prototype
5. Interactively Refine the prototype


