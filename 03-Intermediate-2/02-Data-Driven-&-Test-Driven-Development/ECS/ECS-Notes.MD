Entity Component Systems

----- What is it? -----
--- Definition ---
Simple Definition: 
Data-Oriented Design is programming for good memory access & ECS encourages data-oriented design.

Definition:
Entity Component Systems (ECS) is a Data organization pattern, usually framed in contrast with Standard OOP. It's related to Data Driven Design in that it's a way to encourage it. It's a paradigm or architecture for writing and organizing code, with a focus on seperation of data and logic meaning it has a lack of encapsulation. It emphasizes prominent role of composition and modeling data. It's most commonly used in the Video Game Industry. 

--- History ---


--- Terms & Definitions  ---
Definitions used in ECS:
- Entity
    - things in the world or a Game Object
    - Bag of Components, it's like a component container, similar to a list
    - not usually used for things like terrain
    - has an ID (Primary Key) and pointers to components
    - also known as Assemblages
    - an aggregation of components
- Component
    - data of entities
    - features of entities
    - collection of parts
    - It's data, everything is data
    - raw data for one aspect of a thing
    - Also known as a Flag
    - often seen as a struct, class, array or dictionary
- System
    - update entity data
    - functions to act on entities and components
    - it's functions, Watchers, what steps through components
    - performs actions on every entity that has a component of the aspect the system is designed to work with
    - logic that runs continuously
- Pool
    - like a container of Entities
- Tags
    - Markers of data, a way to define an entity (a type of component)
- Entity Mask
    - bool for each potential component
    - determine if they have components(use bits to store and check cheaply)
- Actor
    - an interactive type of entity, see game of 4 command pattern & Clojures


--- Other Terms, That Come Up ---
Flyweight Pattern?

Sparce and Dense Arrays Sets
- for how to store components in an optimized way?


----- Why would I use it? -----
--- Problems it solves ---


--- OOP Vs ECS ---
OOP
- Focuses on interfaces (how code is used) with key concepts being encapsulation, abstration and inheritance. 
- Easy to understand in a human way, which makes it easy to build and maintain

Data-Oriented Design
- More focus on the data itself, and the algorithms that manipulate that data
- key concepts are removal of data dependency, and how that affects memory access patterns as well as algorithmic simplicity
- Design data structures for how they are going to be used, for maximum efficiency and use. 
- maximize efficiency while keeping code simple

ECS (also a kind of Data-Oriented Design)
- Entity systems assign each component to a system which manages those components
- A sepration of Components from the system (so not putting a Function/Method inside a component as is common with OOP classes)
- Components have no logic, are strickly for holding data, aka plain old data
- Entities are only and identifier used to associate components in systems with each other
- flat heirarchy
- Each system is responsible for updating all of it's components
- Componenets should have no dependencies of each other


--- Examples to show the need ---
Example - Traditional Object Heirarchy (Clases and Subclasses)
    Entity->Animal->Bird->Parrot (Does Fly)
                        ->Penguin (Doesn't Fly)
    What happens when you reach a behavior difference?
--
Example of OOP Heirarchy Problem
    Object->NPC->Merchant
                ->Quest-Giver
    what happens when you want a merchant/quest-giver, double inhertiance is bad and often not supported, common way to fix ends up bloating the higher tier class
--
Example of ECS (Simplified), things in struct are components that trigger systems
NPC {
    Health
    Pos
    Velocity
    Dir
    Render-Model
}
Quest-Giver {
    import-NPC
    offer-quest
}
Merchant {
    import-NPC
    trade
    inventory
}
Quest-Merchant {
    import-merchant
    import-quest-giver
    -- note when importing it just imports the list of components and wouldn't load ones already present, thus removing inheritance problems
}


----- When would it be appropriate to use or not appropriate to use? -----
--- Strengths ---
1. Flexibility (main reason to use)
    - Code is less of a barrier to inspiration
    - Can apply an action to any object
    - Combining things is easy
    - Great for complex interlocking systems
2. Reasonability
    - easy to understand what's going on, because it's not bespoke everywhere
    - Non exponential behavior complexity, more linear interactions
    - Clean archtecture, dependencies are simpler
    - Structure around consuming data as a stream so mutations don't clash
    - Similar advantages as microservices and functional programming
3. Composability
    - can add and remove, and make new stuff easilty
    - Exposed data, easy modding
    - Developer Productivity, easy to add new things
    - Easily extendible and scaleable
    - no heirarchy, just composition
4. Performant
    - loads data in an optimized way, most of the time
    - Can load memory in a more optimized way if done correctly
    - plays nice with Parallelisation
    - good with large sets of data or tasks (similar tasks)
    - less memory allocation tasks and having to free them


--- Weaknesses ---
1. Overkill for non interactive things, like tiles
2. More components more memory needed, though most say this is minimal
3. Having to think in more generic or broader terms, which maybe harder to do
    - instead of tranforming an object break it down to anything that can move, or that can be seen
4. Cache misses seem to be a common problem
5. It usually means more code, even if it's better code
6. No small versions to wrap head around, small version is still complex
7. Requires a deeper understanding of how memory and processors work, without some hardware knowledge many of the optimization benefits won't be there


--- When to use ---
1. When things would create complex inheritance or large monostrucutres
2. When there is lots of complex data
3. To optimize data, especially interactions
4. When there is lots of expiramentation and changing/adding lots of things
5. When there is just a lot of things or lots of options
6. Heavy system interactions (usually strategy games) 
7. To eliminate the stuff that isn't used (often OOP will include extra stuff that gets inherited but not used)
8. It works well to support emergent gameplay and dynamic systems
9. When data analysis (from many sources) is prioritized over mutation
10. When you want everything in the game world to be able to interact with everything else

--- When Not to use ---
1. For simple things, it's an overengineered solution that isn't needed, which can cause problems
2. If a system doesn't change much or isn't interactive, it's overkill
3. Beginner Programmers - it is a more advanced way to reason about code and data


--- Recomendations, or Tips ---
1. Decouple UI from the rest of the engine
    - Use UI Signals & SystemCall/Queries
2. Something like JSON fits well with making entity templates
3. Shallow but wide inheritance is useful
4. Components - Composition over Inheritance, use components to represent capabilities instead of domains (Not strict ECS but maybe useful)
5. Type Objects - Define types where each instance represents a type (Not strict ECS but maybe useful)
6. Command Objects - turn operations into an object, useful for undo (Not strict ECS but maybe useful)


----- What sorts of things should it be used for? -----
It's Good for:
- GUI programming (only updates the parts changed)
- Editors
- Audio Systems
- VFX
- Simulations
- Service Registry
- Anything event Driven
- Anything you want to easily unit test
- Graphics, particle engines, culling, batching
- Physics, Ray testing
- Lighting, lightmap calculation

It's Neutral for:
- Game Logic
- AI (pathfinding might be good though)
- Tools (better to just get them done the quickest way)

It's not good for:
- Disk Heavy Operations
- Unchanging data and procedures - use a database
- heavily hierarchical data - use a database


----- How Can it Be Implemented -----
--- Existing Implementations ---
Rust - Specs
C++ - EnTT, EntityX, Anax
C# - Entitas, EgoCS
Java - Artemis (I've heard it's a very simple and elegant solution that's easy to understand)

--- Suggestions of Implementation ----
Components (The heart of it)
- should only have data, unless it's a supreme edge case like networking
- no logic in data structures
- no methods in component
- one logical concern for each component

Entities
- Pointers to components
- signature check, to filiter entities to run code on - does it have the thing we want to find
- tags without pointers, so as to not need marker components (maybe hashsets)
- Needs an ID

Cache System - to avoid Garbage Collection
- when entity no longer needs a component, or if it's reset, or if component removed
- cleans them to default values, and puts back into pool
- keeps holding the value, so GC isn't activated
- works well with an ECS system

Entity Handles - removing and adding components
- Phase, in and out of phase, an int to count and trigger if active
- entity returns a handle
- handle references an entity
- to prevent accessing the wrong object or memory

Groups, Component Lists
- instead of loops, faster, less computation
- puts load on initial request instead of constant processing
- when new entities created, add to appropriate groups
- ex. all entities with position and veolcity
- only have to loop through and search through a group instead of everything

Blueprints, Named Collections, Entity Templates, Base Templates
- ex. what if you want to make an orc but many kinds
- implement inheritance that removes duplicates, allows for multi inheritance

Slots / Type System - Is a thing vs is made of a thing
- Ineritable and non inheritable type attributes
- almost like a superclass type entity to inherit or overwrite from?

Special Case - Container Entities
- like a backpack, or a canteen
- holds things that do other things

Runtime Type Extensions
- like bringing a wall to life, it was a tile, now it's a creature

Events?
- Events Vs Systems or use system for events?
- check components for interactive components that will affect other systems

Class Hierarchy?
- priority que vs event chaining
- event flow

Game Loop
- do domains or groups in seperate phases, all animation together all physics together kind of thing, like an array of each group to load


----- Links and Sources -----
--- Definition & Explanation Links ---
ECS
https://en.wikipedia.org/wiki/Entity_component_system

Composition over Inheritance
https://en.wikipedia.org/wiki/Composition_over_inheritance


--- Resources ---
ECS FAQ
https://github.com/SanderMertens/ecs-faq

Entity Systems Wiki
http://entity-systems.wikidot.com/

Game Programming Patterns: Component
http://gameprogrammingpatterns.com/component.html

http://devres.zoomquiet.top/data/20170928165417/index.html


--- Talks, Tutorials & Retrospectives ---
Scott Bilas - How He Built Dungeon Siege (2002)
https://www.gamedevs.org/uploads/data-driven-game-object-system.pdf
https://www.gdcvault.com/play/1022728/The-Continuous-World-of-Dungeon
https://www.gamedevs.org/uploads/the-continuous-world-of-dungeon-siege.pdf
https://www.gamedeveloper.com/design/postmortem-gas-powered-games-i-dungeon-siege-i-

Evolving Your Heirarchy (2007)
https://cowboyprogramming.com/2007/01/05/evolve-your-heirachy/

Adam Martin - Making Operation Flashpoint Dragon Rising (2007)
http://t-machine.org/index.php/2007/09/03/entity-systems-are-the-future-of-mmog-development-part-1/
http://t-machine.org/index.php/2007/11/11/entity-systems-are-the-future-of-mmog-development-part-2/

Sean Middleditch - DigiPen GEAC 2013 - Data-Oriented Design
https://www.youtube.com/watch?v=16ZF9XqkfRY

Brian Bucklew - IRDC 2015 - Data Driven Engines of Qud and Sproggiwood
https://www.youtube.com/watch?v=U03XXzcThGU

Thomas Biskup - Roguelike Celebration 2018 - There Be Dragons: Entity Component Systems for Roguelikes (Ultimate Adom)
https://www.youtube.com/watch?v=fGLJC5UY2o4

Bob Nystrom - Roguelike Celebration 2018 - Is There More to Game Architecture than ECS?
https://www.youtube.com/watch?v=JxI3Eu5DPwE

Mars Buttfield-Addison, Paris Buttfield-Addison, Tim McJones - SAConf NY 2019 - Entity Component Systems and You: They're Not Just For Game Developers
https://www.youtube.com/watch?v=SFKR5rZBu-8


--- Sources ---