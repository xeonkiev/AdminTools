# Debian Install

How to start a new Sever ?
This is a basic installation.

### OS :
    
    # Get the all.sh
    wget admin.dln.name
       
    # Download all the git repo content
    bash index.html 
    
    # Execute the init script with the Iptables and Bashrc
    bash github/debian-cleaner.sh github/iptables.sh github/bashrc.txt


### Nginx

This will install NGinx with PHP5 and FastCGI.

    bash github/debian-deploy-nginx.sh

If you want MYSQL :
    
    apt-get install mysql-server mysql-client
    
### MongoDB

    bash github/debian-deploy-mongodb.sh

### Redis

    wget http://redis.googlecode.com/files/redis-2.4.13.tar.gz
    tar xzf redis-2.4.13.tar.gz
    cd redis-2.4.13

    make

    ln -s $(pwd)/src/redis-server /usr/bin/redis-server
    ln -s $(pwd)/src/redis-cli /usr/bin/redis-cli


### Ruby

Please do not use root for that :

    curl -L get.rvm.io | bash -s stable

    source ~/.bachrc
    source ~/.profile

    rvm install zlib
    rvm install 1.9.3
    gem install bundle


