# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 19:09:42 by lrocca            #+#    #+#              #
#    Updated: 2021/04/15 17:53:21 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	80 443 22

RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx openssl openssh
# RUN		rm -rf /var/cache/apk/*

# nginx
RUN		mkdir -p /run/nginx
COPY	./src/index.html ./src/favicon.png /var/www/localhost/htdocs/
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# RUN		openssl req -new -newkey rsa:2048 -nodes -days 365 -x509 \
# 		-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Federation/CN=localhost" \
# 		-keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt

# ssl
RUN		mkdir /etc/nginx/ssl
# RUN		openssl req -nodes -x509 -newkey rsa:2048 -keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt -days 365 -subj "/C=IT/ST=Roma/L=Roma/O=lrocca@42/OU=Org/CN=localhost"
# RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt -subj "/CN=localhost"
# RUN		openssl req -nodes -x509 -newkey rsa:2048 -keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt -days 365 -subj "/C=IT/ST=Roma/L=Roma/O=lrocca@42/OU=Org/CN=ft_services"
RUN		openssl req -newkey rsa:2048 -nodes -days 365 -x509 \
		-subj "/C=IT/ST=Roma/L=Roma/O=lrocca/OU=Void/CN=localhost" \
		-keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt
		# -extensions EXT -config <( \
		# printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

CMD		["/usr/sbin/nginx", "-g", "daemon off;"]
