FROM ubuntu:trusty
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "ServerName localhost:80" >> /etc/apache2/apache2.conf
ADD cd ./index.htm /var/www/html/index.html
CMD apachectl -D FOREGROUND
