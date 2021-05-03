# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 17:56:34 by lrocca            #+#    #+#              #
#    Updated: 2021/05/03 19:16:03 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3306

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache mariadb mariadb-client

# setup
COPY	./src/* /tmp
RUN		mkdir -p /run/mysqld

# start
CMD		/usr/bin/mysql_install_db -u root --datadir=/var/lib/mysql \
		&& /usr/bin/mysqld -u root --skip_networking=0 --init_file=/tmp/init.sql
