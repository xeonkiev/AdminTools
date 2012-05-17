command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists wget ;then
    COMMANDWEB="wget --no-check-certificate"
else
    COMMANDWEB="curl -OL"
fi

mkdir -p github
cd github/

rm ./*.* 2>/dev/null

$COMMANDWEB https://raw.github.com/damln/AdminTools/master/index.php
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/bashrc.txt
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/debian-cleaner.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/debian-deploy-nginx.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/debian-deploy-mongodb.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/gitignore.txt
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/iptables-stop.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/iptables.sh

$COMMANDWEB https://raw.github.com/damln/AdminTools/master/nginx_on.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/nginx.conf
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/nginx_localhost.http

cd ..