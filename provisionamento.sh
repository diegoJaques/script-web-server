#!/bin/bash

echo "executar diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuarios "

useradd carlos -m -c "Carlos" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd maria -m -c "Maria" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd joao -m -c "joao" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -c "Debora" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd sebastiana -m -c "Sebastian" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd roberto -m -c "Roberto" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

useradd amanda -m -c "Amanda" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

useradd rogerio -m -c "Rogerio" -s/bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "alocando os grupos responsaveis"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "alinhado as permissoes"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 

echo "fim do scrip"

