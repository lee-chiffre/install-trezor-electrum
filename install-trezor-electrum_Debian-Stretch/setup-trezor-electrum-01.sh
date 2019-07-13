#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install libssl-dev zlib1g-dev python3-dev python3-pip cython3 libusb-1.0-0-dev libudev-dev libffi-dev
cd python
gpg --verify Python-3.7.2.tgz.asc
read -p "If verification is success. Enter to continue."
tar -xvf Python-3.7.2.tgz
cd Python-3.7.2
./configure
make
sudo make install
read -p "Computer will now reboot. After reboot run script setup-trezor-electrum-02.sh. Hit Enter when ready or Ctrl+C to cancel."
sudo reboot
