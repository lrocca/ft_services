# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 19:09:42 by lrocca            #+#    #+#              #
#    Updated: 2021/05/03 20:18:41 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	80 443 22

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx openssl openssh

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/index.html ./src/404.html ./src/styles.css ./src/favicon.ico \
		/var/www/localhost/htdocs/
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# ssl
RUN		mkdir /etc/nginx/ssl
RUN		openssl req -newkey rsa:2048 -nodes -days 365 -x509 \
		-subj "/C=IT/ST=Roma/L=Roma/O=lrocca/OU=Void/CN=localhost" \
		-keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt

# start nginx process
CMD		["/usr/sbin/nginx", "-g", "daemon off;"]
