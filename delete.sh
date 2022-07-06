apt purge ufw -y
sleep 2
apt purge apache2 -y
rm -v -r /etc/apache2/
sleep 2
apt purge mariadb-server -y
sleep 2
apt purge php libapache2-mod-php php-mysql -y

echo 'Success!'
