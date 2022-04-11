/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_function.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gchatain <gchatain@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/08 14:17:56 by gchatain          #+#    #+#             */
/*   Updated: 2022/01/10 12:01:54 by gchatain         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putchar(char c)
{
	write(1, &c, 1);
	return (1);
}

int	ft_putstr(const char *str)
{
	int	i;

	if (str == 0)
		return (ft_putstr("(null)"));
	i = 0;
	while (str[i])
	{
		ft_putchar(str[i]);
		i++;
	}
	return (i);
}

int	ft_putunsigned(unsigned int nb)
{
	int	i;

	i = 0;
	if (nb > 9)
	{
		i = ft_putunsigned(nb / 10);
		i = i + ft_putunsigned(nb % 10);
	}
	else
	{
		i = i + ft_putchar(nb + 48);
	}
	return (i);
}

int	ft_puthexnbr(unsigned int nbr, const char *base)
{
	int	i;

	i = 0;
	if (nbr > 15)
	{
		i = ft_puthexnbr(nbr / 16, base);
		i = i + ft_puthexnbr(nbr % 16, base);
	}
	else
	{
		i = i + ft_putchar(base[nbr]);
	}
	return (i);
}

int	ft_putpointer(unsigned long long nbr)
{
	char	*tab;
	int		i;

	tab = "0123456789abcdef";
	i = 0;
	if (nbr > 15)
	{
		i = ft_putpointer(nbr / 16);
		i = i + ft_putpointer(nbr % 16);
	}
	else
	{
		i = i + ft_putchar(tab[nbr]);
	}
	return (i);
}
