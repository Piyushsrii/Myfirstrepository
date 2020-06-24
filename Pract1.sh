z#!/bin/bash -x

variable =$(awk '{print$4 $10}' access.log)
echo $variable
variable1 =$(awk '{print$4 $10}' access.log | tail | sort )
echo $variable1

