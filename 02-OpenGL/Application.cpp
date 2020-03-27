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

    //test to console output //it's using OpenGL 2.1 ATI-1.66.31
    std::cout << "OpenGL " << glGetString(GL_VERSION) << std::endl;

    //was an example in tutorial,not sure what for
    //unsigned int a;
    //glGenBuffers(1, &a);

    //buffer here
    unsigned int buffer; //this is the ID of the buffer
    glGenBuffers(1, &buffer);
    //selecting is called binding
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    //next specify the data, how large it should be
    float positions[6] = {
        -0.5f, -0.5f,
         0.0f, -0.5f,
        -0.5f, -0.5f,
    };
    //allocate the memory
    glBufferData(GL_ARRAY_BUFFER, (6 * sizeof(float)), positions, GL_STATIC_DRAW);
    //likely need an index buffer here as well
    //also need a shader probably

    //need to specify how to use the bytes given it, tell it how the data is layed out
    //gl vertex attribute pointer



    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        //used when you don't have an index buffer, will draw what was bound
        glDrawArrays(GL_TRIANGLES, 0, 3); //type, start position, amount

        //glDrawElements(GL_TRIANGLES, 3, );

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}

