This week is about the HtDF recipe to design functions.

Learning Goals
    Be able to use the How to Design Functions (HtDF) recipe to design functions that operate on primitive data.
    Be able to read a complete function design and identify its different elements.
    Be able to evaluate the different elements for clarity, simplicity and consistency with each other.
    Be able to evaluate the entire design for how well it solves the given problem.

"Design methods often make simple problems harder to solve." but will be useful later with hard problems

"treat it like a checklist" - Me

"It makes hard problems easier, it lets us take a big, hard problem and break it down and worth through it in a systematic fashion"
"The price we pay for that is that it actually makes easy problems more cumbersome"


The Recipe, broad strokes
    Signature, purpose and stub. (Sig = Input and output)(purpose = what should it do)(stub = name, param, produce)
    Define examples, wrap each in check-expect. 
    Template and inventory.
    Code the function body. (Copy of template, make it work)
    Test and debug until correct

Terms
    Signature = Input and output, what data are we dealing with, what data does it consume, what data does it produce (Arguments/Consumes => Produces/Returns )
    Purpose = what should it do, what dose it do, a succinct description based on signature (like: produce 2 times the given number)
    Stub = Scafforlding, only useful in the beginning, like a prototype but more disposable, needs a correct function name, correct number of parameters, produces dummy result of correct type (Example: (define (double n) 0))
    Examples/tests = fills both roles, helps us understand behavior and what the function needs to do, in BSL use check-expect to run it as a test as well. can run checks against the stub while live to see if the tests fail, it's good if they do since there is no code, we want to check the tests run, make sure tests are well formed and run(and fail) before moving on
    Template/Inventory = right function name and parameter, roughly, the outline of this function is going to do something(the ...) with the parameter n, this is also disposable like a prototype
    Function body = Copy of template, make it work, actually code it out, if stuck elaborate example, make them more clear how they come to the conclusion

Each step of the recipe builds on the last step, so when you get stuck look at the already done steps to get unstuck.