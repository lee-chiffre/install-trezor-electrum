#!/bin/bash
sudo pip3 install trezor[hidapi]
sudo apt-get install python3-pyqt5
#get pyqt5. The pyqt5 in the debian repo is outdated. This is installing the binary using pip. I am not able to find the signature to go with the source from the developers website. I am communicating to the developer asking how to verify the source code. When I get this squared away I will update this script to install pyqt5 from source.
sudo pip3 install pyqt5
sudo cp 51-trezor.rules /etc/udev/rules.d/
sudo chmod  644 /etc/udev/rules.d/51-trezor.rules
cd electrum/
gpg --verify Electrum-3.3.6.tar.gz.asc
read -p "If verification is success. Enter to continue. Else Ctrl+C to exit."
tar -xvf Electrum-3.3.6.tar.gz
cd Electrum-3.3.6
echo "To run Electrum use command 'python3 run_electrum' in the Electrum-3.3.6 directory. We will test this now."
sleep 8
python3 run_electrum
