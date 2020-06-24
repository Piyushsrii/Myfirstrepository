#!/bin/bash -x

variable=$(awk '{print $4 $11 $15}' access.log | grep http | sort | grep 30/Sep | grep 12 | sort | uniq -c | head -4) 
echo $variable
