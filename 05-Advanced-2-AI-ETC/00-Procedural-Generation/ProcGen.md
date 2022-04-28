Notes about procedural generation, algortithms used, techniques deployed and ideally how to integrate it into AI systems either to help set constraints or to generate data to be used by the AI systems. 

Things to Study:
- Different kinds of Random Number Generators and Seeds
    - Pseudo-Random (PRNG) - many types
    - Gaussian/Normal Distribution
    - Perlin / Simplex Noise (and it's variants - good for maps, clouds)
        - Gain (how long gradients last)
        - Octaves (how many gradients)
        - Lacunarity (Randomness)
        - Frequency (peaks)
- Fractals
- Simple Room-Placement
- BSP - Binary Space Partition (Chopping in Half)
- Cellular Automata
    - Conway's Game of Life
- Drunkard's Walk (good for water eroded areas)
- Diffusion Limited Aggregation
    - DLA with a central attractor
- Voronoi Diagrams (City or Region Generation)
    - Delaunay Triangulation
    - Distance Algorithms (for variation)
        - Pythagoras
        - Manhattan Distance
        - Chebychev
- Prefabs
- Algorithms
    - Dijkstra Maps (remove unreachables, hide items, story progression)
        - "Hot Path" - Herbert Wolverson coined it
- Domain Warping with Perturb Techniques
- Wave Form Collapse / Wave Function Collapse (Constraint Solver)
    - Ajacency Constraints
    - Model Synthesis
- Weightmaps / Splat Maps
- Marching Cubes
- Posibility Spaces
- Validation Checks
- Quadrilateral Grids/Graphs - Deformed (Filling out stuff, like a varoni grid)
    - aperiodic infinite deterministic irregular relaxed quadrilateral grids
- Hexagonal Grids
- search-based, solver-based, rule-based and grammar-based, constructive generation methods
- fitness or Evaluation functions
- Experience Driven PCG framework



May be technically AI, maybe not?
- Grammar Expansion
- Evolutionary Computation
- Fractal Noise
- Latent Variable Evolution (Deep Learning with potential to interat with ProcGen)
- Evolutionary Algorithms
- Markov Chains
- N-grams
- Bayes Nets
- Blending with Alternating Generators
- Random Forrest Classifier



---- Unsorted Resources ---- 

GalaxyKate GDC Talk
https://www.youtube.com/watch?v=WumyfLEa6bU 

Nanogenmo Tutorials and resources
https://nanogenmo.github.io/ 

Perlin Noise

Game Maker Studio ProcGen
https://forum.yoyogames.com/index.php?threads/beginners-proc-gen-in-gms-6-a-is-born-pathfindings-greatest-hits.83160/ 
https://refreshertowelgames.wordpress.com/2020/12/30/procedural-generation-in-gml-1-an-introduction/ 

Redblog Games Resources
https://www.redblobgames.com/

Cellular Automata
https://www.raywenderlich.com/2425-procedural-level-generation-in-games-using-a-cellular-automaton-part-1 

Fantasy Maps Azgaar
https://azgaar.wordpress.com/

Book - Computational Beauty of Nature - https://mitpress.mit.edu/books/computational-beauty-nature

Roguebasin
http://www.roguebasin.com/index.php?title=Main_Page

Here Dragons Abound
https://heredragonsabound.blogspot.com/ 

Book - The Nature of Code
https://natureofcode.com/book/ 

ProcJam
http://www.procjam.com/ Might Need to Use Wayback, if so save everything
https://twitter.com/procjam 

IEEE Conference
https://ieee-cog.org/

Unity Procedural Tutorials
https://catlikecoding.com/unity/tutorials/

Procgen Space / Firespark
https://procgen.space/resources

