#!/bin/bash
#
#	Nome do arquivo: mostrar_humanos.sh
#       Descrição: O script irá realizar uma busca de usuários humanos dentro do sistema. Ele irá se basear no Id minimo e máximo que
#       usuários podem ter dentro do sistema. Após isso, irá realizar uma busca dentro do diretório /etc/passwd de informações sobre
#       os usuários.
#       Autor: Felipe Porceli Volpe
#       Contato: felipe.porceliv@gmail.com
#       Data de criação: 25/07/23
#       Última atualização: 26/07/23
#       Dependências:
#
#LETREIRO
clear
echo -e "\t██    ██ ███████ ██    ██  █████  ██████  ██  ██████  ███████     ██   ██ ██    ██ ███    ███  █████  ███    ██  ██████  ███████" 
echo -e "\t██    ██ ██      ██    ██ ██   ██ ██   ██ ██ ██    ██ ██          ██   ██ ██    ██ ████  ████ ██   ██ ████   ██ ██    ██ ██     " 
echo -e "\t██    ██ ███████ ██    ██ ███████ ██████  ██ ██    ██ ███████     ███████ ██    ██ ██ ████ ██ ███████ ██ ██  ██ ██    ██ ███████" 
echo -e "\t██    ██      ██ ██    ██ ██   ██ ██   ██ ██ ██    ██      ██     ██   ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██ ██    ██      ██" 
echo -e "\t ██████  ███████  ██████  ██   ██ ██   ██ ██  ██████  ███████     ██   ██  ██████  ██      ██ ██   ██ ██   ████  ██████  ███████"
echo  
#MENU
echo -e "\tNOME:\t\tID:\t\tDIR HOME:\t\tNOME:"
IFS_BACKUP=$IFS
IFS=$'\n'
min_uid=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
max_uid=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2) 
for i in $(cat /etc/passwd)
do
	user_id=$(echo $i | cut -d":" -f3)
	if [ $user_id -ge $min_uid -a $user_id -le $max_uid ]
	then
		name_user=$(echo $i| cut -d":" -f1)
		user_desc=$(echo $i| cut -d":" -f5| tr -d ',')
		user_home=$(echo $i| cut -d":" -f6)
		echo -e "\t$name_user\t\t$user_id\t\t$user_home\t\t$user_desc"
	fi
done
echo 
IFS=$IFS_BACKUP

