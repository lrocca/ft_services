# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/19 19:33:25 by lrocca            #+#    #+#              #
#    Updated: 2021/05/03 20:25:20 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

EXPOSE	3000

# packages
RUN		apk update && apk upgrade
RUN		apk add --no-cache grafana \
		--repository http://dl-3.alpinelinux.org/alpine/edge/testing/

# datasource
COPY	./src/influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/

# dashboards
COPY	./src/dashboards.json /usr/share/grafana/public/dashboards/
COPY	./src/dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/

# start
CMD		grafana-server --config=/etc/grafana.ini --homepath=/usr/share/grafana
