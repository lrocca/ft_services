# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/23 17:43:56 by lrocca            #+#    #+#              #
#    Updated: 2021/05/05 17:14:34 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	20-21

# packages
RUN		apk update && apk upgrade

# install vsftpd
RUN		apk add vsftpd openssl

# add and set user password
RUN		adduser -D -h /var/ftp lrocca
RUN		echo "lrocca:42424242" | chpasswd
RUN		cat "https://github.com/leeoocca/awesome-42" >> /var/ftp/42.awesome

# ssl certificate
RUN		openssl req -newkey rsa:2048 -nodes -days 365 -x509 \
		-subj "/C=IT/ST=Roma/L=Roma/O=lrocca/OU=Void/CN=localhost" \
		-keyout /etc/ssl/private/tls.key -out /etc/ssl/private/tls.crt

# start daemon
CMD		/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
