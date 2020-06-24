#!/bin/bash -x
read -p "date" date
date_a=20200320
date_b=20200620
if [[ $date -gt $date_a && $date -le $date_b ]]
    then
         echo "true"
else
         echo "false"
fi
