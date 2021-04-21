# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/20 18:38:34 by lrocca            #+#    #+#              #
#    Updated: 2021/04/21 18:04:25 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	8125

ARG		T_ARCHIVE=telegraf-1.18.1_static_linux_amd64.tar.gz

# packages
RUN		apk update && apk upgrade

# telegraf
RUN		wget https://dl.influxdata.com/telegraf/releases/$T_ARCHIVE
RUN		tar -xf $T_ARCHIVE --strip-components=2
RUN		rm -rf $T_ARCHIVE /etc/telegraf/telegraf.conf

CMD		/usr/bin/telegraf
