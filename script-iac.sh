#!/bin/bash

echo "|-----------------------------------------|"
echo "|   Iniciando configurações do servidor   |"
echo "|-----------------------------------------|"

apt-get update
apt-get ugrade -y

echo "|-------------------------------|"
echo "|  Iniciando instalação APACHE  |"
echo "|-------------------------------|"


apt-get install apache2 -y

echo "|--------------------|"
echo "|  Instalando UNZIP  |"
echo "|--------------------|"

apt-get install unzip -y


echo "|----------------------------------------------|"
echo "|   Baixando e copiando arquivos da aplicação  |"
echo "|----------------------------------------------|"


cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


echo "|---------|"
echo "|   FIM   |"
echo "|---------|"



