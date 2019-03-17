#!/bin/bash
echo "execuntando script..."
sleep 2
user=`whoami`
wget https://github.com/angeloplacebo/CH341SER_4linux/archive/master.zip
unzip master.zip
cd CH341SER_LINUX-master/
sudo make
sudo make load
sudo usermod -a -G tty $user
sudo usermod -a -G dialout $user
cd ..
sudo rm -R CH341SER_LINUX-master
sleep 2
echo "finalizado"
echo "agora salve seus documentos abertos"
echo "script by: @angeloplacebo"
echo "reinicie seu computador para que as alterações tenham efeito"
sleep 2
