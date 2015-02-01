#!/bin/bash

for i in $(ls source-archive/*201[2-3]*.pdf) ;
do 
  BASENAME=`basename $i .pdf` ;
  docsplit text $i --no-ocr --output parse-output/$BASENAME
done;
