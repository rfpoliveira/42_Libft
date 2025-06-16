/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   matrix_free.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpedrosa <rpedrosa@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/04 11:21:32 by rpedrosa          #+#    #+#             */
/*   Updated: 2025/06/16 11:48:44 by rpedrosa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "extra.h"

void	matrix_free(char **mtx)
{
	int	i;

	i = 0;
	if (mtx == NULL)
		return ;
	while (mtx[i])
		free(mtx[i++]);
	free(mtx);
	mtx = NULL;
}
