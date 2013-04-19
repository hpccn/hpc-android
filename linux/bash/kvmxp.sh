#!/bin/sh

#这个速度很快, if=virtio这个快
qemu-system-x86_64 -m 512 -drive file=winxp.img,cache=writeback,if=virtio,boot=on -net nic,model=virtio,name=k1,macaddr=00:11:22:33:66:55 -net tap,vlan=0,name=k1,ifname=tap0,script=no,downscript=no -soundhw sb16
# 这个速度慢
#qemu-system-x86_64 -m 512 -drive file=winxp.img,cache=writeback,if=virtio,boot=on -net nic,model=virtio -net user -smp 2

# 这个速度慢
#qemu-system-x86_64  -m 512 -drive file=winxp.img,cache=writeback,if=virtio -net nic,model=virtio -net tap,ifname=tap0,script=no -boot c 
