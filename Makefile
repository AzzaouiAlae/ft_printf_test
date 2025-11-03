flags	=	-Wall	-Werror	-Wextra	-std=c99
f = -fsanitize=address

compile: unity printf
	@cc	$(flags) $(f) -I. -I../ft_printf/  unity.o main.c ../ft_printf/libftprintf.a
	@$(MAKE) fclean -C ../ft_printf
	@./a.out
	@rm unity.o a.out

printf:
	@$(MAKE) -C ../ft_printf

unity:
	@cc 	-c	Unity-master/src/unity.c	-o unity.o
