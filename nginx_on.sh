#!/bin/sh
# Author       : Damian Le Nouaille
# Author URI   : http://dln.name
# Twitter      : http://twitter.com/damln
# GitHub       : https://github.com/damln

if [ "$USER" != "root" ];then
  echo "Please start the script with ROOT"
  exit
fi

if [ ! "$1" ];then
  echo "What is the folder of your web site ?"
  exit
fi

function usage {
  echo "
  Usage:
    
    $ sudo bash $0 /path/to/site [option]
    
    or

    # bash $0 /path/to/site [option]
  
  Options:

    on     -  Create a nginx.conf file in /path/to/file
              Create a symbolic link to /etc/nginx/sites-enabled/
              Restart Nginx
    
    off    -  Delete the symbolic link in /etc/nginx/sites-enabled/
              Restart Nginx
  "

}

nginx_site=/etc/nginx/sites-enabled
nginx_local_conf="nginx.conf"

current_file=$(dirname "$1""$nginx_local_conf")
cd $current_file
current_folder=$(pwd)

number_of_folder=$(echo "$current_folder" | grep -o "/" | wc -l | sed s/\ //g)
number=$(($number_of_folder+1))
current_relative=$(echo "$current_folder" | cut -d/ -f "$number")

source_file="$current_folder"/"$nginx_local_conf"
destination_file="$nginx_site"/"$current_relative"_"$nginx_local_conf"

function makeNging {

  if [ -f "$source_file" ];then
    date=$(date '+%Y-%m-%d_%Ih%Mm%S')
    mv "$source_file" "$current_folder"/"$date"_"$nginx_local_conf"
  fi

  echo "
  server {
          listen       80;

          server_name $1 www.$1;

          access_log  /var/log/nginx/$1.access.log;
          error_log /var/log/nginx/$1.error.log;
          try_files \$uri \$uri/ /index.php /index.html;

          if (\$host = \"www.$1\") {
              rewrite  ^/(.*)$  http://$1/\$1  permanent;
          }

          location / {
              root   $current_folder;
              index  index.html index.htm index.php;
          }

          location ~ \.php$ {

              if (!-f \$request_filename) {
                   return 404;
              }

              root   $current_folder;
              fastcgi_pass   127.0.0.1:9000;
              fastcgi_index  index.php;
              fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;
              include fastcgi_params;
          }

          # Security
          location ~ /\.ht {
              deny  all;
          }

          # Stuffs
          location = /favicon.ico {
                  access_log	 off;
                  return	 204;
          }

        #listen   443;

        #ssl  on;
        #ssl_certificate  cert.pem;
        #ssl_certificate_key  cert.key;

        #ssl_session_timeout  5m;

        #ssl_protocols  SSLv3 TLSv1;
        #ssl_ciphers  ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv3:+EXP;
        #ssl_prefer_server_ciphers   on;

  }

  " > "nginx.conf"
}

if [ "$2" == "on" ];then
  makeNging "$current_relative"
  rm "$destination_file" 2> /dev/null
  mkdir -p /etc/nginx/sites-enabled/
  ln -s "$source_file" "$destination_file"
  chmod 755 "$destination_file"
  /etc/init.d/php5-fpm restart 2> /dev/null
  /etc/init.d/nginx restart 2> /dev/null
  echo "Site: $current_relative --> $destination_file [ON]"

elif [ "$2" == "off" ];then
  rm "$destination_file"
  /etc/init.d/php5-fpm restart 2> /dev/null
  /etc/init.d/nginx restart 2> /dev/null
  echo "Site: $current_relative [OFF]"
else
  echo "$1 to ON or OFF ?"
fi
