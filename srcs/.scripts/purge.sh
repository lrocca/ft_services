#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    purge.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 16:38:22 by lrocca            #+#    #+#              #
#    Updated: 2021/04/14 16:38:22 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# delete dashboard
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml

# delete metallb
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl delete -f ./srcs/metallb_config.yaml

# delete all kubernetes components
kubectl delete --all pod,deployment,services,configmap

# # delete unused docker containers
# docker container prune -f

# # delete unused docker images
# docker image prune -f

# delete all docker images and containers
# docker rmi $(docker images -q)
# docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)
# docker rmi $(docker images -q)
