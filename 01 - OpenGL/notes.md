course found here https://www.youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2
Except I'm doing it on macOS and with makefiles.



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


we need a vertex buffer
it's a memory buffer, an array of bytes of memory, a holder for memory
this is in the GPU or VideoRam/Vram
we will later pull from the Vram and do a draw call



we need a shader
a shader is a program that runs on the GPU
read and interpret into objects on the screen

opengl operates as a state machine
which buffer, which shader to draw with?




stream, static, dynamic - hints
stream: the data store contents will be modified once and used at most a few times

static: the data store contents will be modified once and used many times

dynamic: the data store contents will be modified repeatedly and used many times


will use what was bound, like it's selected


Need a buffer and a shader, also need vertex attributes. This is the minimum viable draw to screen.

a vertex is more than a position



left off at: https://www.youtube.com/watch?v=x0H--CL2tUI&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=5

going to start over since I've had to switch to windows now