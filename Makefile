# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hhagiwar <hhagiwar@student.42Tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/15 17:24:52 by hhagiwar          #+#    #+#              #
#    Updated: 2023/06/18 12:54:27 by hhagiwar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = func/ft_printf.c func/ft_putchar_printf.c func/ft_putnbr.c func/ft_putnbr_p.c func/ft_putstr_printf.c func/ft_strlen.c
    
OBJS = ${SRC:.c=.o}

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm
RMFLAGS = -f
LIBC  = ar rc

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS}

all: ${NAME}

clean:
	${RM} ${RMFLAGS} ${OBJS}
    
fclean: clean
	${RM} ${RMFLAGS} ${NAME}
re: fclean all

.PHONY: bonus all clean fclean re
