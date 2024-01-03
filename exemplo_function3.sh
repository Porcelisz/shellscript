#/bin/bash
#
adiciona () {
	soma=$(expr $1 + $2)
	return $soma
}

adiciona 10 20
echo $?

