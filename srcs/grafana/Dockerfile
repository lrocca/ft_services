# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/19 19:33:25 by lrocca            #+#    #+#              #
#    Updated: 2021/04/19 20:23:40 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3000

RUN		apk update && apk upgrade
RUN		apk add --no-cache grafana \
		--repository http://dl-3.alpinelinux.org/alpine/edge/testing/

CMD		grafana-server --config=/etc/grafana.ini --homepath=/usr/share/grafana
