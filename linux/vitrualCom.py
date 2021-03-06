#! /usr/bin/env python

#coding=utf-8


import pty
import os
import select

def mkpty():
    #
    master1, slave = pty.openpty()
    slaveName1 = os.ttyname(slave)
    master2, slave = pty.openpty()
    slaveName2 = os.ttyname(slave)
    print ('\nslave device names: ', slaveName1, slaveName2)
    return master1, master2

def makepty():
    #
    master, slave = pty.openpty()
    slaveName = os.ttyname(slave)
    print ('\nslave device names: ', slaveName)
    return master, slaveName


if __name__ == "__main__":

    #master1, master2 = mkpty()
    master1, slaveName1 = makepty()
    master2, slaveName2 = makepty()

    while True:        
        rl, wl, el = select.select([master1,master2], [], [], 1)
        for master in rl:
            data = os.read(master, 128)
            if master==master1:
                print (slaveName1, " read %d data:" % len(data))
                print (data)
                #os.write(master2, data)
            else:
                print (slaveName1, " to write %d data:" % len(data))
                print (data.strip())
                os.write(master1, data.strip())

