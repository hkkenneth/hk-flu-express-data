#!/bin/bash
BADCHAR=`grep -m 1 'Reporting' fluexpress_eng_20120112.txt | cut -c 10-12`
BADCHARB=`grep -m 1 specimen fluexpress_eng_20120112.txt | cut -c 9-10`
for i in $(ls *txt ); do sed -i "s/$BADCHAR/ /g" $i ; sed -i "s/$BADCHARB/ /g" $i ;  done
