#!/bin/bash

TS=`date +'%Y%m%d_%H%M%S'`
PDF='source-archive/flu_update_en_'${TS}'.pdf'
TXT_PREFIX='parse-output/flu_update_en_'${TS}

wget 'http://www.chp.gov.hk/files/pdf/flu_update_en.pdf' -O $PDF

docsplit text $PDF  --no-ocr --output $TXT_PREFIX

mv $TXT_PREFIX/*.txt parse-output/
rm -r $TXT_PREFIX

