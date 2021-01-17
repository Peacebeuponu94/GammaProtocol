#!/bin/bash

$(npm bin)/ganache-cli --port 8545 --fork https://mainnet.infura.io/v3/$INFURA_KEY@11655503 --unlock 0xbe0eb53f46cd790cd13851d5eff43d12404d33e8 --unlock 0x638E5DA0EEbbA58c67567bcEb4Ab2dc8D34853FB > /dev/null 2>&1 & sleep 10 && node --max-old-space-size=4096 $(npm bin)/truffle test ./test/mainnet-fork/*.ts