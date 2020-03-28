#! /bin/sh


#   Authors - OVS Minions
#   Date - 24-March-2020
#   Description -
#   This file is used to create the project folder and


sudo mkdir -p ./ovs_kernel_signing
sudo groupadd minions
sudo usermod -a -G minions adhityar
sudo usermod -a -G minions arpit
sudo usermod -a -G minions pragati
sudo usermod -a -G minions santiagc
sudo chgrp -R minions ./ovs_kernel_signing/
sudo chmod -R 2775 ./ovs_kernel_signing/

cd ovs_kernel_signing
git clone https://github.com/adhitya97/IoT_Sec_Gateway

# ./IoT_Sec_Gateway/setup-node.sh         # Run this command only on node-0 and node-1
