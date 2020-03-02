#gcc -Iglfw3/include/ -Lglfw3/lib/ -lglfw3 -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo main.c

#cc -o myprog myprog.c -Dependencies/GLFW/lib-macos/ -lglfw -framework Cocoa -framework OpenGL -framework IOKit

NAME = OpenGLTest

CC = gcc

CFLAGS = -g -Wall -Wextra -Werror -I includes/ -I $(LIBGL)

LDFLAGS = -L. -lglfw3 -framework OpenGL -framework Cocoa -framework IOKit

LIBGL = ./Dependencies/GLFW/lib-macos/libglfw3.a

SRC = Application.cpp \

OBJ = $(patsubst %.c,src/%.o,$(SRC))

all: $(NAME)

LIBGL:
	make -C $(LIBGL)

$(NAME):
	@ar rcs $(NAME) $(OBJ) $(LIBGL)

test: all
	$(CC) $(CFLAGS) main.c $(LDFLAGS)

#wtf it's deleting my src files?
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f a.out

re: fclean all

.PHONY: all clean fclean re norm LIBGL