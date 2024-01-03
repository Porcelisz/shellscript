#!/bin/bash

for i in /home/porceli/Desktop/CursoShellScript/arquivos/*
do
	if [ -f $i ]
	then
		echo "Verificando o arquivo:  $i"
		linhas=$(cat $i | wc -l)
		echo "O arquivo $i contém $linhas linhas "
		echo
		sleep 1
	fi
done
