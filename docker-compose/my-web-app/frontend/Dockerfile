# /home/ec2-user/docker-compose/my-web-app/frontend/Dockerfile
FROM centos

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum -y update

RUN yum -y install httpd

COPY pages/index.html /var/www/html/

EXPOSE 80

CMD apachectl -D FOREGROUND