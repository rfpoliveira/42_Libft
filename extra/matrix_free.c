/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   matrix_free.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpedrosa <rpedrosa@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/04 11:21:32 by rpedrosa          #+#    #+#             */
/*   Updated: 2024/12/04 11:27:49 by rpedrosa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "extra.h"

void  matrix_free(char **mtx)
{
	int	i;

	i = 0;
	while (mtx[i])
		free(mtx[i++]);
	free(mtx);
}
/*
int	main (void)
{
	char **map = create_matrix("maps/test.ber");
	matrix_free(map);
}*/
