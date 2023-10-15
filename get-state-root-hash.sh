#!/bin/bash

NODE_ADDRESS="http://148.251.81.170:7777"

printf "\n> casper-client get-state-root-hash\n>\t--node-address $NODE_ADDRESS\n\n"

# Get JSON response
#
OUTPUT=$(casper-client get-state-root-hash \
    --node-address "$NODE_ADDRESS")

echo "$OUTPUT"

# Find hash value
#
HASH_RAW=$(echo "$OUTPUT" | jq '.result.state_root_hash')

# Remove double quotes
HASH=$(echo "$HASH_RAW" | tr -d '"')


printf "======================= state_root_hash ========================\n$HASH\n================================================================\n"

echo "$HASH" | pbcopy
echo "$HASH" > state-root-hash.txt

