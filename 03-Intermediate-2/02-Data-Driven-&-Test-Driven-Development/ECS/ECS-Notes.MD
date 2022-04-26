ECS is a Data organization pattern, in contrast with Standard OOP - it's a subset of Data Driven Design

-----

Reasons to Use:
1. To avoid complexities OOP inhertiance
2. Optimization of data for interactions
3. it's good for times when expiramenting and changing things/systems a lot
4. good for systems heavy games (strategy usually)
5. Often OOP will include stuff that wasn't needed because it's all packaged together
6. for games with lots of things in it, or lots of options in it
7. Good for emergent gameplay, dynamic systems

Reasons to Not Use:
1. May not be great if not interactive or not making a game (though I'm skeptical)
2. If you hate it, I guess

Strengths:
1. Flexibility (main reason to use)
2. Reasonability - easy to understand what's going on, because it's not bespoke everywhere
3. Composability - can add and remove, and make new stuff easilty
4. Performant - loads data in an optimized way, most of the time
5. Code is less of a barrier to inspiration
6. Non exponential behavior complexity, more linear interactions
7. Can apply an action to any object
8. Exposed data, easy modding
9. Developer Productivity, easy to add new things
10. Clean archtecture, dependencies are simpler
11. Combining things is easy

Weaknesses:
1. Overkill for non interactive things, like tiles or UI, UI also may be easier to understand in an OOP way
2. More components more memory needed, though most say this is minimal
3. have to think in generic/broader terms, which maybe harder to do (instead of tranforming an object break it down to anything that can move, that can be seen)
4. Cache misses?

Recomendations:
1. Decouple UI from the rest of the engine
    - UI Signals & SystemCall/Queries
2. Something like JSON fits well with making entity templates
3. Shallow but wide inheritance is useful
4. Components - Composition over Inheritance, use components to represent capabilities instead of domains (Not strict ECS but maybe useful)
5. Type Objects - Define types where each instance represents a type (Not strict ECS but maybe useful)
6. Command Objects - turn operations into an object, useful for undo (Not strict ECS but maybe useful)


--- OOP Vs ECS ---

Distinction of ECS from OOP
- A sepration of Components from the system (so not putting a Function/Method inside a component as is common with OOP classes)
- it's a more data driven development process, but also more systems driven
- components are strickly for holding data (they also have ID)

Example - Traditional Object Heirarchy (Clases and Subclasses)
    Entity->Animal->Bird->Parrot (Does Fly)
                        ->Penguin (Doesn't Fly)
    What happens when you reach a behavior difference?

Example of OOP Heirarchy Problem
    Object->NPC->Merchant
                ->Quest-Giver
    what happens when you want a merchant/quest-giver, double inhertiance is bad and often not supported, common way to fix ends up bloating the higher tier class

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
}


----- Definitions & Examples -----

Definitions used in ECS:
- Entity - things in the world, Bag of Components, Game Object (it's like a component container, similar to a list)
- Component - data of entities, features of entities, collection of parts (It's data)
- System - update entity data, functions to act on entities and components (it's fucntions, Watchers, step through components)
- Pool - like a container of Entities
- Tags - Markers of data, a way to define an entity (a type of component)
- Entity Mask - bool for each potential component - determine if they have components(use bits to store and check cheaply)
- Actor - an interactive type of entity, see game of 4 command pattern & Clojures


--- Other Terms ---

Flyweight Pattern?

Sparce and Dense Arrays Sets
- for how to store components in an optimized way?


----- Ideas to Build With ------

Components (The heart of it)
- should only have data, unless it's a supreme edge case like networking
- no logic in data structures
- no methods in component
- one logical concern for each component

Entities
- Pointers to components
- signature check, to filiter entities to run code on - does it have the thing we want to find
- tags without pointers, so as to not need marker components (maybe hashsets)

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


----- Useful Links -----

Composition over Inheritance
https://en.wikipedia.org/wiki/Composition_over_inheritance

Evolving Your Heirarchy
https://cowboyprogramming.com/2007/01/05/evolve-your-heirachy/

Scott Bilas - How He Built Dungeon Siege
https://www.gamedevs.org/uploads/data-driven-game-object-system.pdf
https://www.gdcvault.com/play/1022728/The-Continuous-World-of-Dungeon
https://www.gamedevs.org/uploads/the-continuous-world-of-dungeon-siege.pdf
https://www.gamedeveloper.com/design/postmortem-gas-powered-games-i-dungeon-siege-i-

Brian Bucklew - IRDC 2015 - Data Driven Engines of Qud and Sproggiwood
https://www.youtube.com/watch?v=U03XXzcThGU

Thomas Biskup - Roguelike Celebration 2018 - There Be Dragons: Entity Component Systems for Roguelikes (Ultimate Adom)
https://www.youtube.com/watch?v=fGLJC5UY2o4

Bob Nystrom - Roguelike Celebration 2018 - Is There More to Game Architecture than ECS?
https://www.youtube.com/watch?v=JxI3Eu5DPwE

