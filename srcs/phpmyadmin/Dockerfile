# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/16 16:34:55 by lrocca            #+#    #+#              #
#    Updated: 2021/04/20 20:24:16 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	5000

ARG		PMA_ARCHIVE=phpMyAdmin-latest-english.tar.xz

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx php7 php7-fpm php7-iconv php7-json php7-xml \
		php7-mysqli php7-openssl php7-session php7-mbstring

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# phpmyadmin
RUN		wget -P /tmp https://www.phpmyadmin.net/downloads/$PMA_ARCHIVE
RUN		tar -xf /tmp/$PMA_ARCHIVE -C /var/www/localhost/htdocs --strip-components=1
COPY	./src/config.inc.php /var/www/localhost/htdocs
RUN		rm -f /tmp/$PMA_ARCHIVE

# start php runner and nginx process
CMD		php-fpm7 && /usr/sbin/nginx -g "daemon off;"
