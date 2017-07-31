#!/bin/bash -x

MASTERUSER='user'
MASTERPASSWORD='password'
ENDPOINT='proddb.cqlsysjscfhb.eu-west-1.rds.amazonaws.com'

mysql -u $MASTERUSER --password=$MASTERPASSWORD --host=$ENDPOINT < /usr/share/nginx/html/wordpress/setup.mysql

cat /usr/share/nginx/html/wordpress/nginx.conf > /etc/nginx/nginx.conf

chmod -R 755 /usr/share/nginx/html/wordpress

service php-fpm restart

service nginx restart
