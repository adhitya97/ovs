#! /bin/sh


#   Authors - OVS Minions
#   Date - 24-March-2020
#   Description -
#   This file is used to run the changes made to the OVS repo


# Stop and check the current status of OVS
sudo /usr/share/openvswitch/scripts/ovs-ctl stop
sudo /usr/share/openvswitch/scripts/ovs-ctl status


# Make the new changes
cd /users/santiagc/ovs
sudo make clean
sudo make install

# Restart OVS
sudo /usr/share/openvswitch/scripts/ovs-ctl start --system-id


# Create the flow rules
sudo ovs-ofctl -O Openflow13 add-flow br0 "in_port=1 actions=sign,3"
sudo ovs-ofctl -O Openflow13 add-flow br0 "in_port=4 actions=2"
sudo ovs-ofctl -O Openflow13 add-flow br0 "in_port=2 actions=4"
sudo ovs-ofctl -O Openflow13 add-flow br0 "in_port=3 actions=verify,1"



# Ping after this from node-0 to node-1....
