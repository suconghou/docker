#!/bin/sh
if [ ! -d /var/lib/mysql/mysql ]; then
	echo "installing MySQL..."
	mysql_install_db --user=root > /dev/null
	tfile=`mktemp`
	cat << EOF > $tfile
USE mysql;
GRANT ALL ON *.* to 'root'@'%' IDENTIFIED BY '123456';
UPDATE user SET password=PASSWORD("123456") WHERE user='root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
	echo "MySQL is installed"
else
	echo "MySQL is already installed"
fi
/usr/local/bin/sshd
memcached -d -u nobody -p 11211 -m 4 -c 512 -P /var/run/memcached.pid
redis-server --protected-mode no --daemonize yes
/usr/bin/mysqld --user=root > /var/log/mysqld.log 2>&1 &

if [ -f "$tfile" ]; then
	sleep 2
	echo "initialize MySQL user"
	buildsh=$(cat $tfile)
	mysql -e "$buildsh" && rm -f $tfile
	echo "initialize MySQL user finished"
fi


client_linux_amd64 -r 192.243.115.210:4433 -l :443 -sndwnd 2048 -rcvwnd 2048 -mode fast2
