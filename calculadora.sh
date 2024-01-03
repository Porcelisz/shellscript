#!/bin/bash
#
#	Nome do arquivo: calculadora.sh
#	Descricao: Apenas uma calculadora
#	Autor: Felipe Porceli Volpe
#	Email: felipe.porceliv@gmail.com
#	Dependencias: 
clear
echo " ██████  █████  ██       ██████ ██    ██ ██       █████  ██████   ██████  ██████   █████  "
echo "██      ██   ██ ██      ██      ██    ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██   ██ "
echo "██      ███████ ██      ██      ██    ██ ██      ███████ ██   ██ ██    ██ ██████  ███████ "
echo "██      ██   ██ ██      ██      ██    ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██   ██ "
echo " ██████ ██   ██ ███████  ██████  ██████  ███████ ██   ██ ██████   ██████  ██   ██ ██   ██"
echo " "
echo "Calculadora digital. Por favor, informe a operação que deseja realizar"
echo -e "[1] Para Soma\n[2] Para Subtração\n[3] Para Multiplicação\n[4] Para Divisão\n[Q] Para sair"
read opcao
if [ $opcao -eq 1 ]
then
	clear
	echo "Opção adição escolhida"
	read -p "Informe o primeiro valor: " n1
	read -p "Informe o segundo valor: " n2
	n3=$(expr $n1 + $n2)
	echo "A soma entre $n1 + $n2 = $n3"
fi

#Subtração
if [ $opcao -eq 2 ]
then
	clear
	echo "Opção subtração escolhida"
	read -p "Informe o primeiro valor: " n1
	read -p "Informe o segundo valor: " n2
	#if [ $n1 -eq 0 -o $n2 -eq 0]
	#then
	#	echo "Algum dos valores inseridos são inválidos!"
	#	clear
	#else
	n3=$(expr $n1 - $n2)
	echo "A subtração entre $n1 - $n2 = $n3"
	#fi
fi

#Multiplicação
if [ $opcao -eq 3 ]
then
	clear
	echo "Opção multiplicação escolhida"
	read -p "Informe o primeiro valor: " n1
	read -p "Informe o segundo valor: " n2
	if [ $n1 -eq 0 -o $n2 -eq 0 ]
	then
		echo "Algum dos valores inseridos são inválidos, tente novamente."
		exit
	else
		n3=$(expr $n1 \* $n2)
		echo "O valor da multiplicação de $n1 x $n2 = $n3"
	
	fi
fi

#Divisão
if [ $opcao -eq 4 ]
then
	clear
	echo "Opção Divisão escolhida"
	read -p "Informe o primeiro valor: " n1
	read -p "Informe o segundo valor: " n2
	if [ $n1 -eq 0 -o $n2 -eq 0 ]
	then
		echo "Algum dos valores inseridos são inválidos. Tente novamente."
		exit
	else
		n3=$(expr $n1 / $n2)
		resto=$(expr $n1 % $n2)
		echo -e "A divisão entre $n1 / $n2 = $n3\nSeu resto: $resto"
	fi
fi
