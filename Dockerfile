FROM ubuntu
RUN apt update
RUN apt install apache2 -y
COPY ./index.html /var/www/html/index.html
COPY ./images /var/www/html/images
EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
