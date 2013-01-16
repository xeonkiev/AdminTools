# Index

## Debian / Ubuntu

Every admin / dev have his own deployment system. This are some basics files to inspire you :)

Feel free to fork, update, and contribute.

Cheers. ⚓

### First commands

    sudo apt-get install git
    ssh-keygen
    git clone git://github.com/damln/AdminTools.git

### bashrc

	cp bashrc.txt .bashrc

### Clean the Debian

	bash debian-cleaner.sh

### Nginx

This will install NGinx with PHP5 and FastCGI.

    bash debian-deploy-nginx.sh

If you want MYSQL :

    apt-get install mysql-server mysql-client

### MongoDB

    bash debian-deploy-mongodb.sh

### Ruby

	bash debian-deploy-ruby.sh
	
	# Press 'q' when prompt

### Redis

    wget http://redis.googlecode.com/files/redis-2.4.13.tar.gz
    tar xzf redis-2.4.13.tar.gz
    cd redis-2.4.13

    make

    sudo ln -s $(pwd)/src/redis-server /usr/bin/redis-server
    sudo ln -s $(pwd)/src/redis-cli /usr/bin/redis-cli

### Helpers

#### You can use the nginx_on.sh script for activate some website :

    bash nginx_on.sh /var/www/my_web_site.com/ on

Or Disable :

    bash nginx_on.sh /var/www/my_web_site.com/ off


#### Disable all Iptables rules :

    sudo bash iptables-stop.sh

#### Enable them again :

    sudo bash /etc/init.d/iptables

## OSX

### MP3 to CAF

	bash mp3-to-caf.sh .

# Other
## Local SMTP server for debug

    sudo python -m smtpd -n -c DebuggingServer localhost:25

## Local HTTP server

    python -m SimpleHTTPServer 8080

## Secure data clean
Will fill the folder with 500mo random data:

	bash dd.sh /path/to/dead/folder

## Clean useless files

	bash clean.sh /path/to/clean

## DNS

Google DNS :

	8.8.8.8
	8.8.4.4

OpenDNS :

	208.67.222.222
	208.67.220.222

