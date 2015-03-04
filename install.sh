#!/bin/bash

#Install pyusb
#git clone https://github.com/walac/pyusb
#cd pyusb
#sudo python setup.py install

#Install docking related files
cp ./dock.rules /etc/udev/rules.d/
chmod +x dockLauncher.sh
cp ./dockLauncher.sh /usr/local/bin/
chmod +x ./aoa2usbaudio.py
cp ./aoa2usbaudio.py /usr/local/bin/