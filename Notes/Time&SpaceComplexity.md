Dynamic memory allocation - you don't declare the amount of memory in the beginning, but do it later

Recursion - calling a function on itself

Performance Analysis - how we analyze with time and space
    time complexity - how much time does it take to (example sort)
        Time required:
            T(P) = time required to run a program
            Fixed Part: compile time which is independant of the problem instance = c
            Variable part: run time which depends on the problem instance tp(instance) aka runtime instance

    space complexity - how much memory does it take
        the amount of memory it needs to run and compile the program
        we don't count input/output instead counting loops
        the fixed static component:
            includes the instruction space
            space for simple variables, constants and fixed size variables
            Cp = space required for code segment or static part
        the variable dynamic component:
            consists of the space needed by component variables whose size is dependent on the problem instance at runtime. space needed, recursion stack space
            Sp = space for dynamic part
        space required by program:
            S(p) = Cp + Sp


best case time complexity
    Efficiency of size N takes the smallest amount of time
worst case time complexity
    takes the longest amount of time
average case time complexity
    Due to lack of information about best or worse, it calculates on random input = T(n)

Operation count:
    step count:
        x = a+b = 1
        for(i =1; i<=n; i++) = n
        doulbe for and addition = n(squared)
    can figure out the equation for how complex it is
