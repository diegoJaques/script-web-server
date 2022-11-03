#!/bin/bash
echo "atualizando servidor"
apt-get update
apt-get upgrade -y

echo "instalando Apache2"

apt-get install apache2 -y

echo "instalando unzip"

apt-get install unzip -y

echo "download arquivo github"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo " descompactando "
unzip main.zip

cd linux-site-dio-main

echo "copicando  os arquivos"

cp -R * /var/www/html/ 

systemctl start apache2
 

 
