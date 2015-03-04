AndroidAlsaDock
===================
![alt text](http://i.imgur.com/qwmLS3N.png "Diagram")


Software for running a USB audio dock using Android Open Accessory Protocol 2.0  
USB audio over AOA2 is supported on all Android devices with OS version 4.1 and up. 

# Current Features

* supports all Android devices with OS version 4.1 and up
* Creates alsaloop back device between Android device and sound card
* It is possible to send play,pause, and track skip commands to the android device via USB. See aoa2hid.py for an example.

# Limitations/issues
* USB 2.0 is limited to 500mA charge current by the USB standard. Some third party kernels for Android devices have the ability to bypass this limit.


# Installation

## Install pyusb
	ssh into device (user:root and pass:volumio if using volumio)
    git clone https://github.com/walac/pyusb
    cd pyusb
    python setup.py install

## Install AndroidAlsaDock
    cd ~/
    git clone https://github.com/SquidIndustries/AndroidAlsaDock.git
    cd AndroidAlsaDock
    ./install.sh
    reboot
    

## Reference
* [Jacek Fedoryński USB Audio Dock](http://blog.jfedor.org/2013/01/usb-audio-dock-for-android.html) (same thing but with pulseaudio)
* [Android AOA2 Documentation](http://source.android.com/accessories/aoa2.html)

## To do

* Maybe integrate Volumio webgui playback controls to send commands to Android device

