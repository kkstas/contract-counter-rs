#!/bin/bash

echo $(casper-client account-address --public-key "$(cat $PUBK_HEX_PATH)")
