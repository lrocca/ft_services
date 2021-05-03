#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    undump.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrocca <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/19 18:28:20 by lrocca            #+#    #+#              #
#    Updated: 2021/04/19 18:28:20 by lrocca           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mysql -u root < /tmp/dump.sql
mysql -u root < /tmp/pma.sql

rm -f /tmp/dump.sql /tmp/undump.sh /tmp/init.sql /tmp/pma.sql
