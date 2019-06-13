#!/bin/bash

# inference times log
FILE=./infres/infres.txt

if ! (test -f "$FILE"); then
  # create log
  echo "creating log ... "
  touch $FILE

  # run all validations
  ./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights -dont_show -ext_output < data/train.txt > $FILE

  # obtain inference times
  echo "getting inference times ..."
  grep -o 'Predicted in .*' $FILE | cut -f2- -d:

else
  # obtain inference times
  echo "getting inference times ..."
  grep -o 'Predicted in .*' $FILE | cut -f2- -d:

fi
