#!/bin/bash

echo "Atualizando server..."
apt-get update -y
aprt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Finalizado"
echo "use o comando - chmod +x iac-server-web.sh - Para permitir a execução do script"
echo "após isso execute o script - ./iac-server-web.sh"
