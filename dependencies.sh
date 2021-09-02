#!/bin/bash

if [ $(whoami) == root ]; then
  apt install python3-pip
  python3 -m pip install PySimpleGUI
  echo 'deb [trusted=yes] https://apt.fury.io/ascii-image-converter/ /' | sudo tee /etc/apt/sources.list.d/ascii-image-converter.list
  apt update
  apt install -y ascii-image-converter
  apt install -y ffmpeg
  echo "All okay!"
else
  echo Please run this script as root or using sudo
  exit 1
fi
