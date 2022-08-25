#!/bin/bash
# Script criado em 25 agosto de 2022
# Criado por : Edson Doria

echo  "Criando os diretórios ..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretŕios criados com sucesso !!!"

echo "Criando grupos dos usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos adcionados com sucesso !!!"

echo "Criando usuários eadcionando aos grupos pertencentes ..."

useradd carlos -c "Carlos José" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria da Graça" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Raimundo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Debora Pacheco" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Josefa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Conceição" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Criados os usuários e adcionados aos seus respectivos grupos !!!"

echo "Espefificando permissões ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "script terminado !!!"
