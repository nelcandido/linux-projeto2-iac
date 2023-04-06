#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o apache..."

apt-get install apache2 -y
/etc/init.d/apache2 start

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Baixando aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/

echo "copiando os arquivos da aplicação para o diretorio padrão do apache..."

cp -R * /var/www/html/

echo "Script finalizado!"
