#!/bin/sh
USAGE() {
        echo "ctrl + Alt + Enter 退出全屏 "
}


CONN() {
	USAGE
    echo " "
	rdesktop 10.125.11.19 -f -u bj_pdroid -p 1
#   	-r disk:Frdisk=~/
}

if [ $# -ne 2 ]
then
	CONN
else
    USAGE
fi
