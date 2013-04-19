#!/bin/sh
USAGE() {
 	echo "Select Rmote Host:"
	echo "1) 全屏 10.125.11.19"
	echo "2) 16位颜色 10.125.11.19"
	echo "3) 默认10.125.11.19"
	
	echo ""
	echo "please select remote host"
    echo "ctrl + Alt + Enter 退出全屏 "
	read host
	case "$host" in 
		1) rdesktop 10.125.11.19 -f -u bj_pdroid -p 1
		;;
		2) rdesktop 10.125.11.19 -a 16 -u bj_pdroid -p 1
		;;
		3) rdesktop 10.125.11.19  -u bj_pdroid -p 1
		;;
	esac
}


CONN() {

	USAGE
    echo " "
#   	-r disk:Frdisk=~/
}

if [ $# -ne 2 ]
then
	CONN
else
    USAGE
fi
