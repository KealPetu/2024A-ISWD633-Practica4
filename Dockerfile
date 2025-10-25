FROM alpine:latest
RUN apk update
RUN apk add apache2
COPY ./web /var/www/localhost/htdocs/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]