course found here https://www.youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2

docmunentation found here https://www.glfw.org/

"what matters is what you're building for not what you are building on"

helpful? https://gist.github.com/v3n/27e810ac744b076ceeb7
helpful https://stackoverflow.com/questions/18391487/compiling-with-glfw3-linker-errors-undefined-reference

for when I do this in swift
https://github.com/ValeriyKliuk/GLFW

maybe helpful but also maybe outdated
http://duriansoftware.com/joe/An-intro-to-modern-OpenGL.-Chapter-1:-The-Graphics-Pipeline.html

maybe helpful
https://github.com/cybercser/OpenGL_3_3_Tutorial_Translation/blob/master/Building%20your%20own%20C%20application.md

glew - http://glew.sourceforge.net/
had to install with brew due to admin permisisons stored at /nfs/2018/m/mbrave/.brew/Cellar/glew/2.1.0_1/

or glad

best documentation for openGL
http://docs.gl/



//-------------------// Staring over //---------------------//

01. Intro
opengl is one of many API's to connec to the hardware
direct3d, vulcan, metal etc are also api's to connect to the graphics card hardware

it's not a library engine or framework
it's a specification that lists "this function with these parameters should exist"
so it's a specificaiton of what you can do with the api
so you don't really download it
it' s implemented differently per GPU by the manufacturer
so things might be slightly different per manufactuer
it's not open source
though there are open source implementations of drivers, but most of the time it  isn't open source

what's good about it is how cross platform it is
also how simple it is, it's one of the easier to learn
usually when something is cross platform they implement multiple graphics API's
Native(metal or direct3D) is usually better

old version of opengl was more like a set of presets and was really easy to use. But it din't have much control, so we moved toward modern opengl
the core difference is shaders. 

a shader is code that runs on the gpu
there are other differences too, later.

02. Setting up and making a window

Windowing / making windows is very platform specific
it's operating system specific, and if writing a game engine that's the better way to do it. 
we are going to use glfw to make windows so that we don't have worry about platform specific things as much.
glfw is nice because it's lightweight.
sdl is a bit more complex
but for the purposes of making a window, it's good.

should you use prebuild binaries or compile from source code?
Doesn't seem to matter

32 vs 64 bit, use what's appropriate for the system you want to build for
what matter is the architecture of your application, how you compile it, not the OS that you're using, where is it going to be run?

it's also pretty easy to switch



03. 

04. 

05. 

06. 

07. 

08. 

09. 

10. 

11. 

12. 

13. 

14. 

15. 

16. 

17. 

18. 

19. 

20. 

21. 

22. 

23. 

24. 

25. 

26. 

27. 

28. 

29. 

30. 

31. 