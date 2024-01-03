#!/bin/bash
#
#	Nome do arquivo: verifica_processo.sh
#       Descrição: O script baseado em algum processo digitado pelo usuário, irá procurar para ver se o mesmo está aberto.
#       Caso esteja, ele irá mostrar seu nome e o PID, caso não, ele irá ficar avisando para o usuário que o processo 
#       não está aberto 
#       Autor: Felipe Porceli Volpe
#       Contato: felipe.porceliv@gmail.com
#       Data de criação: 26/07/23
#       Última atualização: 26/07/23 
#       Dependências:

	clear
read -p "Digite o processo: " processo
until ps axu|grep $processo|grep -v grep > /dev/null
do
	echo "Inicie o $processo..."
	sleep 2
	echo " "
done
echo "$processo aberto"
echo "Pid: $(pgrep $processo)"
