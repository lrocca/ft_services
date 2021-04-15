# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 17:56:34 by lrocca            #+#    #+#              #
#    Updated: 2021/04/15 19:27:33 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3306

RUN		apk update && apk upgrade
RUN		apk add --no-cache mariadb mariadb-client

RUN		mkdir -p /run/mysqld
# RUN		mysql_install_db --basedir=/usr --user=root --datadir=/var/lib/mysql
# RUN		/etc/init.d/mariadb setup

CMD		yes

# CMD		/bin/sh &

# CMD		/usr/bin/mysqld --user=root
