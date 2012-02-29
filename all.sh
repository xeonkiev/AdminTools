
if [ -x 'wget' ];then
    COMMANDWEB="wget"
else
    COMMANDWEB="curl -OL"
fi

mkdir -p github
cd github
rm bashrc.txt 2>/dev/null
rm debian-cleaner.sh 2>/dev/null
rm debian-deploy-nginx.sh 2>/dev/null
rm gitignore.txt 2>/dev/null
rm htaccess.fat.txt 2>/dev/null
rm iptables-stop.sh 2>/dev/null
rm iptables.sh 2>/dev/null
rm nginx_on.sh 2>/dev/null

$COMMANDWEB https://raw.github.com/damln/AdminTools/master/bashrc.txt
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/debian-cleaner.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/debian-deploy-nginx.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/gitignore.txt
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/htaccess.fat.txt
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/iptables-stop.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/iptables.sh
$COMMANDWEB https://raw.github.com/damln/AdminTools/master/nginx_on.sh
cd ..