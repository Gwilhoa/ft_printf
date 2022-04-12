# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gchatain <gchatain@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/14 17:49:48 by gchatain          #+#    #+#              #
#    Updated: 2022/04/12 13:29:43 by gchatain         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

ERASE		=	\033[2K\r
GREY		=	\033[30m
RED			=	\033[31m
GREEN		=	\033[32m
YELLOW		=	\033[33m
BLUE		=	\033[34m
PINK		=	\033[35m
CYAN		=	\033[36m
WHITE		=	\033[37m
BOLD		=	\033[1m
UNDER		=	\033[4m
SUR			=	\033[7m
END			=	\033[0m

LST_SRCS =   ft_printf.c putnbr.c printf_function.c

LST_OBJS =		${LST_SRCS:.c=.o}
SRCS =			$(addprefix sources/,$(LST_SRCS))
OBJS =			$(addprefix .objects/,$(LST_OBJS))
INCLUDES =		includes/ft_printf.h
DIR_INCLUDES =	$(sort $(addprefix -I, $(dir $(INCLUDES))))
CC =			gcc
CFLAGS =		-Wall -Wextra -Werror
NAME =			ft_printf.a
RM =			rm -f

all:	${NAME}

.objects/%.o:		sources/%.c ${INCLUDES} | .objects
		${CC} ${CFLAGS} -c $< -o $@ ${DIR_INCLUDES}
		printf "${ERASE}${YELLOW}[BUILD]${END} $@"

${NAME}:	${OBJS} ${INCLUDES} Makefile
		ar -rcs ${NAME} ${OBJS}
		printf "${ERASE}${GREEN}[DONE]${END} ${NAME}\n"

clean:
		${RM} ${OBJS}
		printf "${RED}[DELETE]${END} objects directory"

fclean:	clean
		${RM} -r ${NAME} .objects
		printf "${ERASE}${RED}[DELETE]${END} ${NAME}\n"

re:		fclean all

.objects:
		mkdir -p .objects

.PHONY:	all clean fclean re

.SILENT: