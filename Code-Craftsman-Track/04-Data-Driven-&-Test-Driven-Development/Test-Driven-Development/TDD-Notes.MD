Test Driven Development

----- What is it? -----
--- Definition ---
--- Gist ---
--- History ---
--- Terms ---
Test First

Mocking Techniques


-- Other Terms --
----- Why would I use it? -----
--- Reasoning ---
--- Problems it Solves ---



--- Examples ---
----- When is it Appropriate To Use? -----
--- Strength & Weakness ---

Strenghts
- Maintainable
- develop with confidence
- Covers for and finds mistakes

Weakness
- Test Suites - watch for how some can be expensive and difficult to own
- Easy to make 2-3x the amount of test code than actual code
- can make changes harder
- is actually slower most of the time


--- When to Use & When Not to Use ---
----- What Kinds of Things Should it Be Used For? -----
----- How Can it Be Implmented -----

--- Recomended Implementations ---

- Tests should protect requirements, not implementation details
    - Test Behavior, not implementation
    - Test requirements, not low level
    - Test the abstraction, not the implementation
    - Don't use mocks they bring implementation details to tests
    - Private methods are implementation details, don't test internals, don't make it public to test it
    - If you're not really sure, write temporary tests for implementation (delete the tests)
    - Don't target a method on a class, this isn't TDD (But is often mistaken as it)
        - Focusing on methods is hard to maintain, and we don't capture the behavior we want to preserve
- Test public API, Dev tests, use the implementation lang, the stable contract of the API
    - Thin public api 
- Focus on higher-level
    - Avoid testing implementation details, test behaviors, implementations change
    - Code/Test to prove behavior in the system, not unit tests
    - Test Not classes but behaviours
    - Tests to cover the use cases or stories
    - Test from a higher level of thinking about it, how a user would use it
    - Test the exports from a module
    - Test modules, not class
    - Think about your code as an api
    - Don't isolate classes in testing
- Refactoring = changing internals
    - Patterns in the refactoring
    - No new tests during refactoring, we are already testing behavior so it still covers our changes
    - Refactoring is needed to see what is implementation and what is exports from module
    - Isolate DB and UI testing from other testing, can impact each other and for refactoring purposes
    - "Red-green-refactor" (go fast to working code, write sinful code like a ducttape coder, then clean it up)
        - Red - Write a test that doesn't work
        - Green - make the test work quickly, pass as quickly as possible, understand the problem (cut and paste from stack overflow)
        - Refactor - eliminate duplication, make good code
        - you cant understand and design at the same time, so quick and dirty to start until it's understood, then clean it up
- Keep tests fast (less than 2 min)
- Heavy coupling is the problem with all software, decouple tests from implementation details


Hexagonal/Onion Architecture


Fundamentals of Unit Testing
- verify that a known fixed input produces a known fixed output
- if you don't know the correct output, use tests to find out, use obvious inputs to start
- don't do random input, if you do fuzz testing your record what you sent
- don't use named constants as input, send something similar
- test first makes better tests
- single tests should only take a couple of seconds, a suite should take a min or less, break up the suite if you have to, run long tests last
- avoid flakiness, time dependant, network available, explicit randomness, multithreading
- failing tests should produce clear output
- careful of operating system assumptions
- careful of undefined behavior, like floating point rounding, integer width, deffault character set
- avoid conditional logic

--- Existing Implmenetations ---

----- Links -----

Ian Cooper - DevTernity 2017 - TDD, Where Did It All Go Wrong
https://www.youtube.com/watch?v=EZ05e7EMOLM


Original and Best Book - Test-Driven Development by Example - Kent Beck
