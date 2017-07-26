#!/bin/bash -x

yum install -y nginx mysql php php-mysql php-fpm php-gd php-mbstring php-mcrypt

cd /opt

wget https://wordpress.org/latest.tar.gz

tar -xvzf latest.tar.gz -C /usr/share/nginx/html/

chown -R nginx:nginx /usr/share/nginx/html/wordpress

chmod -R 755 /usr/share/nginx/html/wordpress
