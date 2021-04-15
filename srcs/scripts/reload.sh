#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    reload.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 17:45:56 by lrocca            #+#    #+#              #
#    Updated: 2021/04/15 17:46:15 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

reload() {
	kubectl delete pod,deployment,services $1
	docker build -t ft-services/$1 ./srcs/$1
	kubectl apply -f ./srcs/$1/$1.yaml
}

# reload nginx
# reload wordpress
reload mysql
