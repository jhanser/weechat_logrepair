#!/bin/bash

# If the System crashes, sometimes the logs from weechat are broken with lots of nullbytes at the end.
# This is not good.
# Gladly, there is this script. It will fix these Problems. Hopefully.

for f in $1/*.weechatlog
  do
    echo "Processing $f"
#    sed -i 's/\ //g' "$f"
    sed -i 's/'$(echo "\x00")'//g' "$f"
    echo
  done

