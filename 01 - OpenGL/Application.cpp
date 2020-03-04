#include <iostream>
#include "Dependencies/GLEW/include/glew.h" //needs to come first?
#include "Dependencies/GLFW/include/glfw3.h"



int main(void)
{
    GLFWwindow* window;



    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    // has to come after context, or it doesn't work
    if (glewInit() != GLEW_OK)
        std::cout << "Error" << std::endl;

    //not working?
    std::cout << "OpenGL " << glGetString(GL_VERSION) << std::endl;

    //unsigned int a;
    //glGenBuffers(1, &a);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        //temp test, make a triangle to the screen.
        // different on MacOS?
        /*
        glBegin(GL_TRIANGLES);
        glVertex2f(0, 0);
        glVertex2f(0.5, -0.5);
        glVertex2f(-0.5, -0.5);
        glEnd();
        */

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}

