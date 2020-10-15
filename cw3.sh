#!/bin/bash

for found_file in $(find . -name "*$1" -print);
do
    mod=$(date -r $found_file +%s)
    now=$(date +%s)
    days=$(expr \( $now - $mod \) / 86400)

    [ "$days" -le "$2" ] && tar rvf  ./$3 $found_file
done