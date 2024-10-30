#!/usr/bin/bash
trap ctrl_c INT
function ctrl_c() {
        echo "nice try"
}
while true;do 
echo "i will survive"; 
sleep 1;
done;
