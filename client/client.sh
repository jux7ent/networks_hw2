#!/bin/bash

iperf -s    -p 8080 &
iperf -s -u -p 8080 &

while true; do
    ssh -oStrictHostKeyChecking=no -oConnectTimeout=3 admin@88.88.1.0 echo "ssh connected"
    ping 88.88.1.0 -c 10
done
