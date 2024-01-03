#/bin/bash
#
ler () {
	read -p "Informe o nome: " nome
	read -p "Informe o sobrenome: " sobrenome

}
ler
echo "Returno code = $?"
echo $nome $sobrenome
