#!/bin/bash
clear
#	Nome do arquivo: script_backup.sh
#	Descrição: O script irá realizar um backup de toda a pasta home, dentro de uma pasta Backup dentro do própio home
#	O script também irá procurar se não foi realizado nenhum backup dentro de 7 dias. Se encontrar, irá perguntar
#	ao usuário se deseja realmente fazê-lo. Ficando a escolha dele
#	Autor: Felipe Porceli Volpe
#	Contato: felipe.porceliv@gmail.com
#	Data de criação: 22/07/23
#	Última atualização: 22/07/23 
#	Dependências:


diretorio=/home/porceli/Backup
mes=$(date +%D | cut -c1-2)
dia=$(date +%D | cut -c4-5)
ano=$(date +%D | cut -c7-8)
minuto=$(date | tr -d ' ' | cut -c12-13)
hora=$(expr $(date| tr -d ' '| cut -c9-10) + 12)
nome_backup="backup_home_$ano$mes$dia$hora$minuto"
#Titulo

echo " ██████   █████   ██████ ██   ██ ██    ██ ██████       ██     ██████"  
echo " ██   ██ ██   ██ ██      ██  ██  ██    ██ ██   ██     ███    ██  ████" 
echo " ██████  ███████ ██      █████   ██    ██ ██████       ██    ██ ██ ██"
echo " ██   ██ ██   ██ ██      ██  ██  ██    ██ ██           ██    ████  ██"
echo " ██████  ██   ██  ██████ ██   ██  ██████  ██           ██ ██  ██████" 
                                                                    
sete_dias=$(find $diretorio -ctime -7 -name backup_home\*tgz) #Procurar se o arquivo ja nao foi criado a 7 dias
arquivo="$nome_backup.tgz"
echo -e "Esse script foi feito para a realização de backup de todo o diretório de usuário.\nO backup estará dentro de uma pasta de backup dentro do própio diretório de usuário. Selecione a opção baseado na sua escolha.\n[0] Para sair\n[1] Para fazer o backup "
read -p "Digite a opção: " opcao
case $opcao in
	0)
		exit
		;;
	1)
		clear
		echo "Backup em ação"
		;;
esac
#Procurar se a pasta existe
echo "Procurando basta backup..."
if [ ! -d $diretorio ]
then
	echo "Criando o diretório $diretorio..."
	mkdir -p $diretorio
fi
if [ "$sete_dias" ] #testa se a variável não é nula
then
	clear
	echo "Ja foi gerado um backup no diretorio $diretorio nos últimos 7 dias."
	echo -n "Deseja continuar? (N/S)"
	read -n1 opc
	if [ $opc = n -o $opc = N -o $opc = "" ]
	then
		echo "Backup abortado!"
		exit 1
	elif [ $opc = S -o $opc = s ]
	then
		echo "Será criado mais um backup para a mesma semana!"
	else
		echo "Opção inválida"
		exit 2
	fi
fi
echo "Criando backup..."
tar zcvpf $diretorio/$arquivo --exclude="$diretorio" /home/porceli/*
clear
echo "O backup \"$arquivo"\" foi criado em $diretorio
echo "Backup concluido."




