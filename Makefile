HEADER = libasm.h

SRC =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s \

NASM = NASM

FLAGS = -f macho64

OBJ = $(SRC:.s=.o)

NAME = libasm.a

RM   =  rm -f

%.o: %.s $(HEADER)
	$(NASM) $(FLAGS) $< -o $@

all: $(NAME)

$(NAME): $(OBJ) 
		ar rc $(NAME) $(OBJ)

clean: 
	$(RM) *.o

fclean: clean
	$(RM) libasm.a

re: fclean all

.PHONY: all clean fclean re