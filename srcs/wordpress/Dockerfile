# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/15 16:37:35 by lrocca            #+#    #+#              #
#    Updated: 2021/04/15 19:27:28 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	5050

RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx wget php7 php7-fpm php7-opcache php7-gd \
		php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# wordpress
RUN		wget -P /tmp https://wordpress.org/latest.tar.gz
RUN		tar -xvf /tmp/latest.tar.gz -C /var/www/localhost/htdocs --strip-components=1
RUN		rm -f /tmp/latest.tar/.gz
COPY	./src/wp-config.php /var/www/localhost/htdocs

CMD		php-fpm7 && /usr/sbin/nginx -g "daemon off;"
