FROM ubuntu:trusty
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "ServerName localhost:80" >> /etc/apache2/apache2.conf
ADD cd /var/lib/jenkins/workspace/window_master-J3HLJS73RBNO73HQAHDBXTSN6HGO5URWF66BWKWEF7EH6FA4KLSA@2/index.htm /var/www/html/index.html
CMD apachectl -D FOREGROUND
