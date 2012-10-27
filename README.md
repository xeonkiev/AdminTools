# Index 

- [Sed Memo](https://github.com/damln/AdminTools/blob/master/sed_memo.md)
- [Unix Memo](https://github.com/damln/AdminTools/blob/master/unix_memo.md)
- [Windows Memo](https://github.com/damln/AdminTools/blob/master/windows_memo.md)
- [OSX Memo](https://github.com/damln/AdminTools/blob/master/osx_memo.md)
- [Hotmail fun address](https://github.com/damln/AdminTools/blob/master/hotmail_address.md)

## Debian


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


### Helpers

#### You can use the nginx_on.sh script for activate some website :

    bash github/nginx_on.sh /var/www/my_web_site.com/ on
    

Or Disable :

    bash github/nginx_on.sh /var/www/my_web_site.com/ off
    

#### Disable all Iptables rules :

    sudo bash github/iptables-stop.sh

#### Enable them again :

    sudo bash /etc/init.d/iptables

#### A simple .gitignore

    cp github/gitignore.txt .gitignore
 
 
#### A big .htaccess

    cp github/htaccess.fat.txt .htaccess
    

# Other

Google DNS :
	
	8.8.8.8
	8.8.4.4

OpenDNS :

	208.67.222.222
	208.67.220.222

