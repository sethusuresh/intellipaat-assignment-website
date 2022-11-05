FROM ubuntu
RUN apt update
RUN apt install apache2 -y
COPY /home/ubuntu/jenkins/workspace/master/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
