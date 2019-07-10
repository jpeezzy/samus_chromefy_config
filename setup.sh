#!/bin/bash
set -x #echo on 
sudo mv 50-touchpad-cmt-samus.conf /etc/gesture/
sudo mv /etc/gesture/50-touchpad-cmt-eve.conf /etc/gesture/50-touchpad-cmt-eve.conf.old
sudo mkdir /usr/share/alsa/ucm/bdw-rt5677/
sudo initctl stop cras
sudo cp HiFi.conf /usr/share/alsa/ucm/bdw-rt5677/
sudo cp bdw-rt5677.conf /usr/share/alsa/ucm/bdw-rt5677/
sudo cp dsp.ini /etc/cras
sudo cp bdw-rt5677 /etc/cras
sudo initctl start cras
sudo cp 60-keyboard.hwdb /lib/udev/hwdb.d/
sudo udevadm trigger

