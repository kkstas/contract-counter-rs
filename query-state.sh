#!/bin/bash

STATE_RH=$(./get-state-root-hash.sh)
ACC_ADDR=$(./get-acc-addr.sh)

casper-client query-state \
    --node-address "$NODE_ADDRESS" \
    --state-root-hash $STATE_RH \
    --key $ACC_ADDR

