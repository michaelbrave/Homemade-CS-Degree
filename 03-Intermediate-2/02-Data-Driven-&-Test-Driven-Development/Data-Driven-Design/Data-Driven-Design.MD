Data Driven Design, 

Things that matter:
1. Deadlines
2. Performance
3. Usability
4. Maintenance
5. Debugability
6. Optimizability
7. Testability
8. Concurrence
9. Stability


Data Oriented Design Principles - by Mike Acton
- The Purpose of all programs, and all parts of those programs, is to transform data from one form to another
- if you don't understand the data, you don't understand the problem
- understand a problem better by understanding the data
- different problems require differnt solutions
- different data = different problem == different solution
- if you don't understand the cost of solving the problem, you don't understand the problem. 
- Everyuthing is a data problem. Including usability, maintenance, debug-ability, etc. Everything.
- Solving problems you don't have creates more problems you definitely do
- Latency and throughput are only the same in sequential systems
- Where there is one there are many, try looking on the time axis
- The more context you have, the better you can make the solution. Don't throw away data you need.
- Understand data access over time, like the whole system
- Reason must prevail
- can't future proof, the world and hardware change, the problems aren't the same
- Solve for transforming the data you have given the constraints of the platform, and nothing else
- it's more of a reminder of first principles than a new idea


Three Big Lies (of Modern Programming Culture, often OOP) - By Mike Acton
1. Software is a platform, different hardware computes different solutions
    - if you think the right way is someway other than what works, then your idea of the right way is wrong
2. Code designed around model of the world
    - hiding data gets in the way of maintence, and gets in the way of understanding the data, which is critical for actually solving the problem
    - world modeling is idealizing the problem, often at the expense of making new problems
3. Code is more important than Data
    - purpose of code is tranforming data in a meaninful way
    - code is not the job, solving the problem is

Links

Mike Acton - CCPCon 2014 - Data Oriented Design and C++ (Insomniac Games)
https://www.youtube.com/watch?v=rX0ItVEVjHc