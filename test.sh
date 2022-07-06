!# usr/bin/bash

echo 'Getting everything up to date...'

apt update -y
apt upgrade -y

echo 'Setting up a Firewall...'

apt install ufw

ufw enable
ufw allow OpenSSH
ufw allow in "WWW Full"

echo 'Installing Apache...'

apt install apache2 -y

echo 'Apache has been successfully installed!'
echo ''
echo 'Installing Maria-DB...'

apt install mariadb-server -y
mysql_secure_installation -y

echo 'Maria-DB has been successfully installed!'
echo ''
echo 'Installing PHP...'

apt install php libapache2-mod-php php-mysql -y
sed -i 's/index.php/index.html/g' /etc/apache2/mods-enabled/dir.conf
sed -i 's/index.html/index.php/1' /etc/apache2/mods-enabled/dir.conf
systemctl reload apache2

echo 'PHP has been successfully installed!'

