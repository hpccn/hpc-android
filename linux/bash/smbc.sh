#!/bin/sh
USAGE() {
        echo "ctrl + Alt + Enter 退出全屏 "
}


CONN() {
	smbclient //192.168.1.246/BJ_Pdroid -U bj_pdroid%Qwer567
}


if [ $# -ne 2 ]
then
	CONN
else
    USAGE
fi
