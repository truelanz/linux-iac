#!/bin/bash
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

echo "GRUPO ADM: "

useradd carlos -c "Carlos adm" -s /bin/bash -m
useradd maria -c "Maria adm" -s /bin/bash -m
useradd joao -c "João adm" -s /bin/bash -m

usermod -g GRP_ADM carlos
usermod -g GRP_ADM maria
usermod -g GRP_ADM joao

echo "GRUPO ADM E USUÁRIOS CRIADOS!"

echo "GRUPO DE VENDAS: "

useradd debora -c "Debora vendas" -s /bin/bash -m
useradd sebastiana -c "Sebastiana vendas" -s /bin/bash -m
useradd roberto -c "Roberto vendas" -s /bin/bash -m

usermod -g GRP_VEN debora
usermod -g GRP_VEN sebastiana
usermod -g GRP_VEN roberto

echo "GRUPO DE VENDAS E USUÁRIOS CRIADOS!"

echo "GRUPO SECRETÁRIADO: "

useradd josefina -c "Josefina secretária" -s /bin/bash -m
useradd amanda -c "Amanda secretária" -s /bin/bash -m
useradd rogerio -c "Rogerio secretária" -s /bin/bash -m

usermod -g GRP_SEC josefina
usermod -g GRP_SEC amanda
usermod -g GRP_SEC rogerio

echo "GRUPO SECRETÁRIADO E USUÁRIOS CRIADOS!"

echo "Permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."
