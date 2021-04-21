# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 16:37:35 by lrocca            #+#    #+#              #
#    Updated: 2021/04/20 20:24:20 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	5050

ARG		WP_ARCHIVE=latest.tar.gz

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx php7 php7-fpm php7-opcache php7-gd php7-curl \
		php7-zlib php7-mbstring php7-json php7-session php7-mysqli

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# wordpress
RUN		wget -P /tmp https://wordpress.org/$WP_ARCHIVE
RUN		tar -xf /tmp/$WP_ARCHIVE -C /var/www/localhost/htdocs --strip-components=1
RUN		rm -f /tmp/$WP_ARCHIVE
COPY	./src/wp-config.php /var/www/localhost/htdocs

# start php runner and nginx process
CMD		php-fpm7 && /usr/sbin/nginx -g "daemon off;"
