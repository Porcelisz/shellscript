#!/bin/bash
#
until ps axu|grep firefox|grep -v grep > /dev/null
do
	echo "Inicie o firefox..."
	sleep 2
	echo " "
done
echo "Firefox aberto"
echo "Pid: $(pgrep firefox)"
