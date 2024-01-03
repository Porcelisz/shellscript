#!/bin/bash
#
maiuscula () {
	read -p "Digite uma frase: " frase 
	var1=$(echo $frase | tr a-z A-Z)
}
maiuscula
echo $var1
