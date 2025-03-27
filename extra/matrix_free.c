/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   matrix_free.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpedrosa <rpedrosa@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/04 11:21:32 by rpedrosa          #+#    #+#             */
/*   Updated: 2025/03/27 16:54:41 by rpedrosa         ###   ########.fr       */
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
		r_free(&(mtx[i++]));
	r_free(mtx);
}
