#!/bin/bash

echo "Iniciando o Script de Provisionamento de um Servidor Web (Apache)"

echo "Atualizando o servidor..."
apt-get update -y && apt-get upgrade -y

echo "Instalando o Apache e o unzip..."
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Reiniciando o Apache para aplicar as mudanças..."
systemctl restart apache2

echo "Provisionamento concluído com sucesso!"
