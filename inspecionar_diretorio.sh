#!/bin/bash
#
#	Nome do arquivo: inspeciona_diretorio.sh
#       Descrição: O script irá buscar dentro do diretório de cara usuário a quantidade de arquivos com extensão .mp3, .mp4, .pg existentes 
#       Autor: Felipe Porceli Volpe
#       Contato: felipe.porceliv@gmail.com
#       Data de criação: 26/07/23
#       Última atualização: 26/07/23 
#       Dependências:
#Pegar Nome e ID de usuário
clear
IFS_BACKUP=$IFS
IFS=$'\n'
min_uid=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2 )
max_uid=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2 )
for i in $(cat /etc/passwd)
do
        user_id=$(echo $i | cut -d":" -f3)
        if [ $user_id -ge $min_uid -a $user_id -le $max_uid ]
        then
                name_user=$(echo $i| cut -d":" -f1)
		user_home=$(echo $i| cut -d":" -f6)
		mp4=$(find $user_home -name '*.mp4' 2>/dev/null| wc -l)
		jpg=$(find $user_home -name '*.jpg' 2>/dev/null| wc -l)
		mp3=$(find $user_home -name '*.mp3' 2>/dev/null| wc -l)
		echo -e "Mostrando arquivos do usuário: $name_user\nArquivos JPG: $jpg\nArquivos MP3: $mp3\nArquivos MP4: $mp4\n"
        fi
done
echo
IFS=$IFS_BACKUP

