#!/bin/bash

# Get JSON response
#
OUTPUT=$(casper-client get-state-root-hash \
    --node-address http://148.251.81.170:7777)

# Find hash value
#
HASH_RAW=$(echo "$OUTPUT" | jq '.result.state_root_hash')

# Remove double quotes
HASH=$(echo "$HASH_RAW" | tr -d '"')

echo "$HASH"
echo "$HASH" | pbcopy
echo "$HASH" > state-root-hash.txt

