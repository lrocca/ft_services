#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 15:05:33 by lrocca            #+#    #+#              #
#    Updated: 2021/04/14 15:05:33 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [[ "$1" == "dashboard" ]] || [[ "$1" == "purge" ]] || [[ "$1" == "reset" ]] \
|| [[ "$1" == "reload" ]]; then
	./srcs/.scripts/$1.sh
	exit
fi

apply="kubectl apply -f"

deploy() {
	docker build -t ft-services/$1 ./srcs/$1
	$apply ./srcs/$1/$1.yaml
}

# metallb
# https://metallb.universe.tf/installation/

## enable strict arp mode
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
$apply - -n kube-system

## install by manifest
$apply https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
$apply https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
### On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

## apply metallb configuration
# $apply ./srcs/tls.yaml
$apply ./srcs/metallb.yaml

deploy mysql
deploy nginx
deploy wordpress
deploy phpmyadmin
deploy telegraf
deploy grafana
deploy influxdb
deploy ftps
sleep 3
kubectl exec -it `kubectl get pods | grep mysql | tr ' ' '\n' | head -n 1` -- sh /tmp/undump.sh
