#!/bin/bash

function assertStatus {
    if [ "$?" != "0" ]
    then
        echo "Failed!"
    fi
}

# Every network configuration is static for now. Perhaps options shall
# be taken as arguments or configured by a micro service?

# Anyway, isp run on 213 network and clients on the 217 network.

echo -n "Creating a tun device named tun0 ... "
ip tuntap add mode tun tun0
assertStatus
echo "Done!"

echo -n "Activating tun0 ... "
ip link set tun0 up
assertStatus
echo "Done!"

echo -n "Creating (ISP) interface address 213.0.0.1 on tun ... "
ip addr add 213.0.0.1/24 dev tun0
assertStatus
echo "Done!"

echo -n "Routing traffic to 217.0.0.0/24 to tun0 ... "
ip route add 217.0.0.0/24 dev tun0 src 213.0.0.1
assertStatus
echo "Done!"
