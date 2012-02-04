#!/bin/bash
traceroute -n $1 | grep -e "^\ *[0-9]\+" | grep -v "*" | xargs -n1 | grep -e "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" | awk '{gsub(/[()]/,"");print}' | xargs -n1 -P32 ./geoip.sh
