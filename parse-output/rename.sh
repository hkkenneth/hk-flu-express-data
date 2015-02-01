#!/bin/bash

# to be run in commit #9456880

# fix GOV's naming....
git mv flu_express_week1_12012012_eng/flu_express_week1_12012012_eng.txt flu_express_week1_12012012_eng/flu_express_week1_12_01_2012_eng.txt
git mv flu_express_week2_19012012_eng/flu_express_week2_19012012_eng.txt flu_express_week2_19012012_eng/flu_express_week2_19_01_2012_eng.txt

for i in $(ls flu_express_week*/*txt) ;
do 
  D=`basename $i .txt | cut -f 4 -d'_'` ;
  printf -v DD "%02g" $D
  M=`basename $i .txt | cut -f 5 -d'_'` ;
  printf -v MM "%02g" $M
  YYYY=`basename $i .txt | cut -f 6 -d'_'` ;
  echo 'command: git mv '$i' fluexpress_eng_'$YYYY$MM$DD'.txt';
  git mv $i fluexpress_eng_$YYYY$MM${DD}.txt
done;

# fix GOV's typo....
git mv fluexpress_web_week32_7_8_2014_eng/fluexpress_web_week32_7_8_2014_eng.txt  fluexpress_web_week32_7_8_2014_eng/fluexpress_web_week32_14_8_2014_eng.txt

for i in $(ls fluexpress_web_week*/*txt) ;
do 
  D=`basename $i .txt | cut -f 4 -d'_'` ;
  printf -v DD "%02g" $D
  M=`basename $i .txt | cut -f 5 -d'_'` ;
  printf -v MM "%02g" $M
  YYYY=`basename $i .txt | cut -f 6 -d'_'` ;
  echo 'command: git mv '$i' fluexpress_eng_'$YYYY$MM$DD'.txt';
  git mv $i fluexpress_eng_$YYYY$MM${DD}.txt
done;

for i in $(ls fluexpress_week1*/*txt fluexpress_week2[0-2]*/*txt) ;
do 
  D=`basename $i .txt | cut -f 3 -d'_'` ;
  printf -v DD "%02g" $D
  M=`basename $i .txt | cut -f 4 -d'_'` ;
  printf -v MM "%02g" $M
  YYYY=`basename $i .txt | cut -f 5 -d'_'` ;
  echo 'command: git mv '$i' fluexpress_eng_'$YYYY$MM$DD'.txt';
  git mv $i fluexpress_eng_$YYYY$MM${DD}.txt
done;

for i in $(ls fluexpress_week2[3-9]*/*txt) ;
do 
  M=`basename $i .txt | cut -f 3 -d'_'` ;
  printf -v MM "%02g" $M
  D=`basename $i .txt | cut -f 4 -d'_'` ;
  printf -v DD "%02g" $D
  YYYY=`basename $i .txt | cut -f 5 -d'_'` ;
  echo 'command: git mv '$i' fluexpress_eng_'$YYYY$MM$DD'.txt';
  git mv $i fluexpress_eng_$YYYY$MM${DD}.txt
done;

for i in $(ls flu_express_wk*/*.txt) ;
do 
  DD=`basename $i .txt | cut -f 4 -d'_' | cut -c 1-2` ;
  MM=`basename $i .txt | cut -f 4 -d'_' | cut -c 3-4` ;
  YYYY=`basename $i .txt | cut -f 4 -d'_' | cut -c 5-8` ;
  echo 'command: git mv '$i' fluexpress_eng_'$YYYY$MM$DD'.txt';
  git mv $i fluexpress_eng_$YYYY$MM${DD}.txt
done;
