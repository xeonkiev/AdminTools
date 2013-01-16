## Network

Flush cache :

	sudo dscacheutil -flushcache

Uninstall Mysql (BACKUP FIRST!) :

	sudo rm -rf /usr/local/mysql*
	sudo rm -rf /Library/StartupItems/MySQLCOM
	
	# in /etc/hostconfig, replace the MSQLCOM entry by :
	
	MSQLCOM=-NO-

## Files
Show hidden fils in Finder :

	defaults write com.apple.finder AppleShowAllFiles -bool true

## Resize images to 50%. For non-retina.

	bash resize-50-percent.sh /path/to/*.@2x.png

## Chrome
Open Chrome with a proxy setting :

	open -a '/Applications/Google Chrome.app' --args --proxy-server=localhost:2222

## XAMPP problem
If MYSQL needs .sock :

	sudo ln -s /Applications/XAMPP/xamppfiles/var/mysql/mysql.sock /tmp/mysql.sock

## MongoDB

Install

    brew install mongodb

Run at startup.
    
    sudo cp org.mongodb.mongod.plist ~/Library/LaunchAgents/org.mongodb.mongod.plist 
       
    sudo touch /var/log/mongodb.log
    sudo touch /Users/damln/Work/DBS/mongod.conf
    
    sudo chmod 777 /var/log/mongodb.log
    sudo chmod 755 /Users/damln/Work/DBS/mongod.conf
    chmod 644 ~/Library/LaunchAgents/org.mongodb.mongod.plist
    
    launchctl unload ~/Library/LaunchAgents/org.mongodb.mongod.plist 
    launchctl load ~/Library/LaunchAgents/org.mongodb.mongod.plist 
    
    launchctl stop org.mongodb.mongod.plist
    launchctl start org.mongodb.mongod.plist
    
## Redis
   
Install
 
    brew install redis

Run at startup.
    
    sudo cp io.redis.redis-server.plist /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo chown root:wheel /Library/LaunchDaemons/io.redis.redis-server.plist
    
    sudo touch /var/log/redis.log
    sudo chmod 777 /var/log/redis.log
    
    sudo launchctl unload /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo launchctl load /Library/LaunchDaemons/io.redis.redis-server.plist
    sudo launchctl stop io.redis.redis-server.plist
    sudo launchctl start io.redis.redis-server.plist
