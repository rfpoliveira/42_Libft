/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   matrix_free.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpedrosa <rpedrosa@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/04 11:21:32 by rpedrosa          #+#    #+#             */
/*   Updated: 2025/03/28 11:44:05 by rpedrosa         ###   ########.fr       */
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
		free(&(mtx[i++]));
	free(mtx);
}
