#!/bin/bash
# chmod +x htmlcoin-wallet-mining.sh
# now you can run this file by typing
# ./htmlcoin-wallet-miining.sh

clear
count=1

echo "HTMLCoin wallet mining started..."
echo

# change directory into wallet folder. If the folder name is different, then change to the correct folder name
cd HTMLCOIN

while true; do
  echo "$count: $(date)"
  echo "$count: $(date)" >> wallet-mining.log

  # change the address to your address
  src/htmlcoin-cli generatetoaddress 100 HdiM5GZAb6PckiMosmTCAt9WS5gvuVVRXX 222222222 >> wallet-mining.log
  (( count++ ))
done
