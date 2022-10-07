#!/bin/bash

echo "Iniciando atualização do servidor...."

 apt-get update -y
 apt-get upgrade -y

echo "Atualização finalizada com sucesso !!!"

echo "Instalando Apache2...."
  apt-get install apache2 -y
echo "Apache 2 instalado com sucesso !!!"

echo "Instalando Unzip...."
  apt-get install unzip -y
echo "Unzip instalado com sucesso...."

echo "Baixando repositório do GitHub...."
  cd /tmp && wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download concluido !!!"

echo "Descompactando e copiando arquivos...."

  unzip main.zip
  cd /tmp/linux-site-dio-main/ && cp * -R /var/www/html

echo "Deploy do servidor WEB realizado com sucesso !!!"

