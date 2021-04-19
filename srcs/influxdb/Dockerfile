# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/19 20:22:06 by lrocca            #+#    #+#              #
#    Updated: 2021/04/19 20:25:13 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	8086

RUN		apk update && apk upgrade
RUN		apk add --no-cache influxdb

CMD		/usr/sbin/influxd

