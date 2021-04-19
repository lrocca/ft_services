# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 16:37:35 by lrocca            #+#    #+#              #
#    Updated: 2021/04/16 17:23:47 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	5050

ARG		WP_ARCHIVE=latest.tar.gz

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx wget php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# wordpress
RUN		wget -P /tmp https://wordpress.org/$WP_ARCHIVE
RUN		tar -xvf /tmp/$WP_ARCHIVE -C /var/www/localhost/htdocs --strip-components=1
RUN		rm -f /tmp/$WP_ARCHIVE
COPY	./src/wp-config.php /var/www/localhost/htdocs

# start php runner and nginx process
CMD		php-fpm7 && /usr/sbin/nginx -g "daemon off;"
