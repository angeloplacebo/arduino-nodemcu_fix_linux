#!/bin/bash
echo "executando script..."
user=`whoami`
group=`groups|awk '{print $1}'`
var1=`lsusb | grep Qin | awk '{print $6}' | awk -F ":" '{print $1}'`
var2=`lsusb | grep Qin | awk '{print $6}' | awk -F ":" '{print $2}'`
echo -e "SUBSYSTEM==\"tty\", GROUP=\"$user\", MODE=\"0660\" \nACTION==\"add\", SUBSYSTEMS==\"usb\", ATTRS{idVendor}==\"$var1\", ATTRS{idProduct}==\"$var2\", SYMLINK+=\"nodemcu\"" > /etc/udev/rules.d/99-nodemcu.rules
echo "finalizado"
echo "agora salve seus documentos abertos"
echo "script by: @angeloplacebo"
echo "reinicie seu computador para que as alterações tenham efeito"
sleep 2
