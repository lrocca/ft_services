# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/13 19:09:42 by lrocca            #+#    #+#              #
#    Updated: 2021/04/14 20:42:37 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	22 80 443

RUN		apk update && apk upgrade
RUN		apk add --no-cache nginx openssl openssh
# RUN		rm -rf /var/cache/apk/*

RUN		mkdir -p /run/nginx
COPY	./src/index.html ./src/favicon.png /var/www/localhost/htdocs/
COPY	./src/nginx.conf /etc/nginx/nginx.conf

# RUN		openssl req -new -newkey rsa:2048 -nodes -days 365 -x509 \
# 		-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Federation/CN=localhost" \
# 		-keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt

# RUN		mkdir /etc/nginx/ssl
# RUN		openssl req -newkey rsa:2048 -nodes -days 365 -x509 \
# 		-subj "/C=IT/ST=Roma/L=Roma/O=lrocca@42.fr/OU=Void/CN=localhost" \
# 		-keyout /etc/nginx/ssl/tls.key -out /etc/nginx/ssl/tls.crt
		# -extensions EXT -config <( \
		# printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

CMD		["/usr/sbin/nginx", "-g", "daemon off;"]
