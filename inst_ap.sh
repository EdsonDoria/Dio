#!/bin/bash
# Criado por: Edson Jr
# 28 de agosto 2022

dnf -y upgrade
dnf install httpd -y

#Baixando os arquivos do amigo

wget https://github.com/denilsonnonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -p /var/www/html
