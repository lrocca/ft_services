# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/19 19:33:25 by lrocca            #+#    #+#              #
#    Updated: 2021/05/05 17:36:12 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3000

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache grafana \
		--repository http://dl-3.alpinelinux.org/alpine/edge/community/

# provisioning
COPY	./src/influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY	./src/dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/

# dashboards
COPY	./src/ft_services.json /etc/dashboards/

# start
CMD		grafana-server --config=/etc/grafana.ini --homepath=/usr/share/grafana
