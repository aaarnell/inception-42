# образ, на базе которого будет собран мой образ для контейнера
FROM debian:buster

# действия над контейнером до его запуска
RUN set -e \
	&& apt update \
	&& apt install -y nginx openssl \
	&& openssl req \
		-newkey rsa:4096 \
		-x509 \
		-days 365 \
		-nodes \
		-out /etc/ssl/certs/nginx.pem \
		-keyout /etc/ssl/private/nginx.key \
		-subj "/C=RU/ST=Moscow/L=Moscow/O=21school/CN=inception"
#
COPY ./conf/default.conf /etc/nginx/conf.d

#VOLUME /etc/nginx

#
#EXPOSE 443

#
CMD ["nginx", "-g", "daemon off;"]
