#!/bin/bash

if [ "$USER" != "root" ];then
    echo "Please start the script with ROOT"
    echo "EXIT"
    exit
fi

echo "- Apt-get"
apt-get update
apt-get upgrade

echo "- Installation BASE Build Essential"
apt-get -y install build-essential libssl-dev

echo "== Postfix:"
apt-get -y install --no-install-recommends postfix
apt-get -y install --no-install-recommends dovecot-imapd
/etc/init.d/dovecot stop
/etc/init.d/postfix stop
update-rc.d -f dovecot remove
update-rc.d -f postfix remove

echo "== php"

apt-get -y install --no-install-recommends php5-cgi
/etc/init.d/apache2 stop
update-rc.d -f apache2 remove

echo "== Cherokee;"
apt-get update
apt-get install --no-install-recommends cherokee rrdtool libxml2-dev libcherokee-mod-rrd
/etc/init.d/cherokee stop
rm /var/www/*
echo "." > /var/www/index.html

echo "== UWSGI:"
apt-get install psmisc python-dev libxml2 libxml2-dev python-setuptools
wget http://projects.unbit.it/downloads/uwsgi-0.9.6.5.tar.gz
tar xzf uwsgi-0*.gz
mv uwsgi-0.9.6.5/ uwsgi/
cd uwsgi/
make
groupadd uwsgi
useradd -s /usr/sbin/nologin -M -g uwsgi uwsgi
chown -R uwsgi:uwsgi uwsgi/
touch /var/log/uwsgi.log
chown uwsgi /var/log/uwsgi.log
cd ..
rm uwsgi-*.gz
ln -s /home/damian/uwsgi/uwsgi /usr/bin/uwsgi

echo "== Django:"
apt-get -y install --no-install-recommends python-imaging
wget http://www.djangoproject.com/download/1.2.3/tarball/
mv index.html django.tar
tar xzf django.tar
cd Django-1*/
python setup.py install
cd ..
rm -rf Django-1*
rm -    f django.tar

echo "== PyMongo;"
wget http://pypi.python.org/packages/source/p/pymongo/pymongo-1.9.tar.gz
tar xvf pymongo-1*.gz
cd pymongo-1*/
python setup.py install
cd ..
rm -rf pymongo-1*

echo "== MongoDB":
wget http://downloads.mongodb.org/linux/mongodb-linux-i686-1.6.4.tgz
tar xzf mongodb-linux*.tgz
mkdir /home/damian/db /home/damian/lib
mv mongodb-linux-*/ /home/damian/lib/mongodb
chown damian /home/damian/db /home/damian/lib
rm mongodb-linux-*.tgz

echo "cleaning"
apt-get -y autoremove
apt-get -y autoclean
apt-get -y clean
