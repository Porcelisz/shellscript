#!/bin/bash
#
clear
read -p "Informe o limite de processos" limite
while [ $(ps axu|wc -l) -le $limite ]
do
	echo "Tudo ok"
	echo "Processos atuais: $(ps axu|wc -l)"
	sleep 3
	echo
done
echo "Limite de Processos Excedido"
echo "Por favor verifique o sistema"

