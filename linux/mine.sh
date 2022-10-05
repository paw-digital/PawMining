#!/bin/bash
read -p "Your PAW address : " paw
chmod +x bin/xmrig
bash bin/xmrig --opencl --cuda -o mining.paw.digital:3333 -u $paw -k --coin monero -a rx/0
