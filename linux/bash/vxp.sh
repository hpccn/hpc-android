#!/bin/bash
if [ `pidof qemu-system-x86_64` ]; then
echo "KVM is already running..."
exit
fi
# qemu-system-x86_64 -m 256 -soundhw es1370 -hda /media/E/winxp.img -hdb /dev/sda7 -localtime -net nic -net user -nographic -daemonize -redir tcp:3389::3389 -boot c -k en-us &

qemu-system-x86_64 -localtime -m 512 -drive file=/mnt/bak/kvm/winxp.img,cache=writeback,if=virtio,boot=on -net nic,model=virtio,name=k1,macaddr=00:11:22:33:66:55 -net tap,vlan=0,name=k1,ifname=tap0,script=no,downscript=no -cdrom /dev/cdrom -drive file=/dev/sda11,cache=writeback,if=virtio -boot order=c,menu=off -soundhw es1370

#qemu-system-x86_64 -localtime -m 512 -hda /mnt/bak/kvm/winxp.img -net nic,model=virtio,name=k1,macaddr=00:11:22:33:66:55 -net tap,vlan=0,name=k1,ifname=tap0,script=no,downscript=no -cdrom /dev/cdrom -hdb /dev/sda11 -boot c
#-soundhw es1370 
#-hdb /dev/sda11

