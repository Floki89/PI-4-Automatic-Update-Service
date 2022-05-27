#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y 
sudo rpi-update -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sleep 5
echo zenity --warning \
       --title "Wallpen Update" \
       --width 500 \
       --height 500 \
       --text "Update Erfolgreich"
sleep 5
shutdown
