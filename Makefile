# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gchatain <gchatain@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/14 17:49:48 by gchatain          #+#    #+#              #
#    Updated: 2022/01/08 14:34:02 by gchatain         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c putnbr.c printf_function.c

OBJS = ${SRCS:.c=.o}

HEADER = ft_printf.h

NAME = libftprintf.a

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

%.o : %.c  ${HEADER}
	${CC} ${CFLAGS} -c $< -o $@

$(NAME):	${OBJS}
	ar -rcs ${NAME} ${OBJS}

all :		${NAME}

clean:
	${RM} ${OBJS} ${OBJS_BONUS}

fclean:		clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
