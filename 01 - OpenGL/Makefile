#gcc -Iglfw3/include/ -Lglfw3/lib/ -lglfw3 -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo main.c

#cc -o myprog myprog.c -Dependencies/GLFW/lib-macos/ -lglfw -framework Cocoa -framework OpenGL -framework IOKit

#CFLAGS = -g -Wall -Wextra -Werror -I includes/ -I $(LIBGL)

#LDFLAGS = -L -lglfw3 -framework OpenGL -framework Cocoa -framework IOKit

#LIBGL = ./Dependencies/GLFW/lib-macos/libglfw3.a

NAME = OpenGLTest

CC = g++

SRCS = Application.cpp \

GLEWLIB = -L Dependencies/GLEW/lib/ -lGLEW

GLFWLIB = -L Dependencies/GLFW/lib-macos/ -lglfw3 -framework OpenGL -framework Cocoa -framework IOKit

CFLAGS = -Wall -Werror -Wextra -I ./inc

OBJ = $(SRCS:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(CFLAGS) $(OBJ) $(GLFWLIB) $(GLEWLIB)

clean: #why is it deleting my cpp file?
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re norm LIBGL