# Debian Install


Every admin / dev have his own deployment system. This are some basics files to inspire you :)

Feel free to fork, update, and contribute.

Cheers. ⚓

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

    source ~/.bashrc
    source ~/.profile
    
    sudo chmod 755 /usr/bin/make /usr/bin/gcc
    
    rvm pkg install zlib
    rvm install 1.9.3
    gem install bundle


### Helpers

###### You can use the nginx_on.sh script for activate some website :

    bash github/nginx_on.sh /var/www/my_web_site.com/ on
    

Or Disable :

    bash github/nginx_on.sh /var/www/my_web_site.com/ off
    

###### Disable all Iptables rules :

    sudo bash github/iptables-stop.sh

###### Enable them again :

    sudo bash /etc/init.d/iptables

###### A simple .gitignore

    cp github/gitignore.txt .gitignore
 
 
###### A big .htaccess

    cp github/htaccess.fat.txt .htaccess
    

## OSX

### MongoDB

Install

    brew install mongodb

Run at startup.
    
    sudo cp github/org.mongodb.mongod.plist ~/Library/LaunchAgents/org.mongodb.mongod.plist 
       
    
    sudo touch /var/log/mongodb.log
    sudo touch /Users/damln/Work/DBS/mongod.conf
    
    sudo chmod 777 /var/log/mongodb.log
    sudo chmod 755 /Users/damln/Work/DBS/mongod.conf
    chmod 644 ~/Library/LaunchAgents/org.mongodb.mongod.plist
    
    launchctl unload ~/Library/LaunchAgents/org.mongodb.mongod.plist 
    launchctl load ~/Library/LaunchAgents/org.mongodb.mongod.plist 
    
    launchctl stop org.mongodb.mongod.plist
    launchctl start org.mongodb.mongod.plist
    

### Redis
   
Install 
 
    brew install redis

Run at startup.
    
    sudo cp github/io.redis.redis-server.plist /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo chown root:wheel /Library/LaunchDaemons/io.redis.redis-server.plist
    
    sudo touch /var/log/redis.log
    sudo chmod 777 /var/log/redis.log
    
    sudo launchctl unload /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo launchctl load /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo launchctl stop io.redis.redis-server.plist
    sudo launchctl start io.redis.redis-server.plist
