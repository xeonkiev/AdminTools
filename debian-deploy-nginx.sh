#!/bin/bash

if [ "$USER" != "root" ];then
    echo "Please start the script with ROOT"
    exit
fi

apt-get update
apt-get upgrade

echo "== Installing:"
apt-get -y --force-yes remove --purge nginx

apt-get -y install php5-common php5-dev php5-mysql php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-cgi php5-mcrypt php5-curl php5-gd php5-memcache php5-mhash php5-pspell php5-snmp php5-sqlite libmagick9-dev php5-cli

apt-get -y install nginx
# apt-get -y --force-yes install mysql-server mysql-client

echo '
#!/bin/bash
BIND=127.0.0.1:9000
USER=www-data
PHP_FCGI_CHILDREN=15
PHP_FCGI_MAX_REQUESTS=1000

PHP_CGI=/usr/bin/php-cgi
PHP_CGI_NAME=`basename $PHP_CGI`
PHP_CGI_ARGS="- USER=$USER PATH=/usr/bin PHP_FCGI_CHILDREN=$PHP_FCGI_CHILDREN PHP_FCGI_MAX_REQUESTS=$PHP_FCGI_MAX_REQUESTS $PHP_CGI -b $BIND"
RETVAL=0

start() {
      echo -n "Starting PHP FastCGI: "
      start-stop-daemon --quiet --start --background --chuid "$USER" --exec /usr/bin/env -- $PHP_CGI_ARGS
      RETVAL=$?
      echo "$PHP_CGI_NAME."
}
stop() {
      echo -n "Stopping PHP FastCGI: "
      killall -q -w -u $USER $PHP_CGI
      RETVAL=$?
      echo "$PHP_CGI_NAME."
}

case "$1" in
    start)
      start
  ;;
    stop)
      stop
  ;;
    restart)
      stop
      start
  ;;
    *)
      echo "Usage: php-fastcgi {start|stop|restart}"
      exit 1
  ;;
esac
exit $RETVAL

' > /etc/init.d/php-fastcgi

rm /etc/nginx/sites-enabled/*

echo "
server {
        listen       80 default;
        listen   [::]:80 default ipv6only=on; ## listen for ipv6

        server_name exemple.com www.exemple.com;

        access_log  /var/log/nginx/localhost.access.log;
        error_log /var/log/nginx/localhost.error.log;
        try_files \$uri \$uri/ /index.php;

        location / {
            root   /var/www;
            index  index.html index.htm index.php;
        }

        location ~ \.php\$ {
          fastcgi_pass   127.0.0.1:9000;
          fastcgi_index  index.php;
          fastcgi_param  SCRIPT_FILENAME  /var/www/\$fastcgi_script_name;
          include fastcgi_params;
         }


        # Security
        location ~ /\.ht {
            deny  all;
        }
}

" > "/etc/nginx/sites-enabled/localhost"

echo "== Cleaning:"
apt-get -y autoremove
apt-get -y autoclean
apt-get -y clean

echo "== Stop Service:"

/etc/init.d/php-fastcgi stop 2> /dev/null
/etc/init.d/nginx stop 2> /dev/null
/etc/init.d/bind9 stop 2> /dev/null
/etc/init.d/apache2 stop 2> /dev/null
/etc/init.d/mysql stop 2> /dev/null
/etc/init.d/php5-cgi stop 2> /dev/null
/etc/init.d/php5-fpm stop 2> /dev/null

killall php5-cgi 2> /dev/null
killall php5-fpm 2> /dev/null

update-rc.d -f bind9 remove
update-rc.d -f apache2 remove

chmod 755 /etc/init.d/php-fastcgi
bash /etc/init.d/php-fastcgi restart
bash /etc/init.d/nginx restart

echo "
NGINX Installed and running.
"
