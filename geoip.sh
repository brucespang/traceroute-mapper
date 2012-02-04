#!/bin/bash
curl -s http://www.geoplugin.net/json.gp?ip=$1 | grep -E "(latitude|longitude)" | awk '{gsub(/("geoplugin_latitude":|"geoplugin_longitude":|,|\ )/,"");print}' | xargs -n2 | grep -v "^ " | awk '{gsub(/\ /,",");print}'
