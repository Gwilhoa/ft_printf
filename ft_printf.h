/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gchatain <gchatain@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/14 18:18:05 by gchatain          #+#    #+#             */
/*   Updated: 2022/01/09 22:07:00 by gchatain         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>
# include <stdarg.h>

int	putnbr(int nb);
int	ft_putnbr(int nbr);
int	ft_putchar(char c);
int	ft_putstr(const char *str);
int	ft_putunsigned(unsigned int nb);
int	ft_puthexnbr(unsigned int nbr, const char *base);
int	ft_putpointer(unsigned long long nbr);
int	function_parser(va_list args, int c);
int	ft_printf(const char *str, ...);

#endif