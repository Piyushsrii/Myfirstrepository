#!/bin/bash -x
ft=12
inch=42
echo '1ft = 12inch then 42 in='
newFt=$(($inch/$ft));
echo $newFt
