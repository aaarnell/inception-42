# образ, на базе которого будет собран мой образ для контейнера
FROM debian:buster

# действия над контейнером до его запуска
RUN set -e \
	&& apt update \
	&& apt install -y \
		wget \
		php7.3 php-fpm php-mysql \
		php-curl php-json php-gd php-mbstring php-intl php-bcmath php-bz2 php-readline php-zip \
		php-xml php-xmlrpc php-soap php-imagick		

#
EXPOSE 9000
