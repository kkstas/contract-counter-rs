#!/bin/bash

# jq tool needs to be installed for json parsing

NODE_ADDRESS="http://148.251.81.170:7777"


# Get JSON response
#
OUTPUT=$(casper-client get-state-root-hash \
    --node-address "$NODE_ADDRESS")


# Find hash value
#
HASH_RAW=$(echo "$OUTPUT" | jq '.result.state_root_hash')

# Remove double quotes
HASH=$(echo "$HASH_RAW" | tr -d '"')


echo "$HASH"
