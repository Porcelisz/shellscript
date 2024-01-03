#!/bin/bash
#
#
menu () {
	clear
	echo "███████ ██    ██ ███    ██  ██████  ██████  ███████ ███████"     
	echo "██      ██    ██ ████   ██ ██      ██    ██ ██      ██     "     
	echo "█████   ██    ██ ██ ██  ██ ██      ██    ██ █████   ███████"     
	echo "██      ██    ██ ██  ██ ██ ██      ██    ██ ██           ██"     
	echo "██       ██████  ██   ████  ██████  ██████  ███████ ███████"     
        echo " "                                                    
	echo -e "Seja bem-vindo ao menu de funções de data!\nEscolha alguma das opções abaixo para a formatação de sua data =)"
	echo -e "-f Para dizer se sua data está em formato BR ou US\n-i Para inverter os formatos, incluindo barras\n-b Para incluir barras\n-e Para exibir a data em formato extenso!"	
	read -p "Digite a opcao desejada! " opcao
}
f () {
	clear
	read -p "Digite uma data: " data
	convertido=$(echo $data | tr -d '/')
	dia=$(echo $convertido | cut -c1-2)
	mes=$(echo $convertido | cut -c3-4)
	ano=$(echo $convertido | cut -c5-8)
	if [   ]
	
}
f
