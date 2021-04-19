# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 17:56:34 by lrocca            #+#    #+#              #
#    Updated: 2021/04/19 19:38:25 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3306

RUN		apk update && apk upgrade
RUN		apk add --no-cache mariadb mariadb-client

COPY	./dump.sql ./undump.sh ./init.sql ./pma.sql /tmp
RUN		mkdir -p /run/mysqld

CMD		/usr/bin/mysql_install_db -u root --datadir=/var/lib/mysql \
		&& /usr/bin/mysqld -u root --skip_networking=0 --init_file=/tmp/init.sql
