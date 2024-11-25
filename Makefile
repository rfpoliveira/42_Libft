# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rpedrosa <rpedrosa@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/31 10:00:30 by rpedrosa          #+#    #+#              #
#    Updated: 2024/10/31 11:09:14 by rpedrosa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###Files and Paths###

SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
	  ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
	  ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
	  ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c \
	  ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \

EXTRA_SRCS = $(addprefix $(EXTRA_PATH)/, ft_printf.c r_put_hex.c r_putnbr.c r_put_ptr.c r_putstr.c r_putunsig.c  get_next_line.c get_next_line_fd.c r_free.c)

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			 ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS = $(addprefix $(BUILD_PATH)/, $(notdir $(SRCS:.c=.o)))

BONUS_OBJS = $(addprefix $(BUILD_PATH)/, $(notdir $(BONUS_SRCS:.c=.o)))

EXTRA_OBJS = $(addprefix $(BUILD_PATH)/, $(notdir $(EXTRA_SRCS:.c=.o)))

NAME = libft.a

LIBFT_PATH = ./libft
EXTRA_PATH = extra
BUILD_PATH = .build

###ALIAS###

RM = rm -rf
AR = ar rcs
CFLAGS = -Wall -Werror -Wextra


###Rules###

all: $(NAME)

$(BUILD_PATH):
	mkdir $(BUILD_PATH)

$(NAME): $(BUILD_PATH) $(OBJS)
	$(AR) $(NAME) $(OBJS) 

	
$(BUILD_PATH)/%.o: %.c
	cc $(CFLAGS) -o $@ -c $<
	
$(BUILD_PATH)/%.o: $(EXTRA_PATH)/%.c
	cc $(CFLAGS) -o $@ -c $<

bonus: $(BUILD_PATH) $(OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)

extra: $(BUILD_PATH) $(OBJS) $(BONUS_OBJS) $(EXTRA_OBJS)
	$(AR) $(NAME) $(OBJS) $(BONUS_OBJS) $(EXTRA_OBJS)

clean: 
	$(RM) $(BUILD_PATH)

fclean: clean
	$(RM) $(NAME)

re: fclean extra
