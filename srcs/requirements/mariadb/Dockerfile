# образ для создания контейнеров
FROM debian:buster

# переменные среды импортируемые в контейнер
ENV MYSQL_ROOT_PASSWORD=inception42

# каталог хоста для подмонтирования в контейнер
#VOLUME /var/lib/mysql

# настройки во время запуска контейнера
RUN set -e \
	&& apt update \
	&& apt install -y mariadb-server

# открытие порта 
EXPOSE 3306

# копирование файлов с хоста в контейнер
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
#COPY ./tools/create_db.sql /
COPY ./tools/create_db.sh /usr/local/bin

#RUN service mysql start	&& mysql < /create_db.sql && rm -f /create_db.sql && echo $MYSQL_ROOT_PASSWORD
RUN set -e \
	&& service mysql start \
	&& create_db.sh

# команда для выполнения после запуска контейнера
CMD mysqld_safe
