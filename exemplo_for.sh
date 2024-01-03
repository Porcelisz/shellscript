#!/bin/bash

clear
read -p "Informe o inicio da sequência: " inicio
read -p "Informe o final da sequência: " final

for i in $(seq $inicio $final )
do
	echo "Exibindo valor atual: $i"
	sleep 1
done

