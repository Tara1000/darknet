#!/bin/bash

# validation results log
FILE=./valres/valres.txt

if ! (test -f "$FILE"); then
  # create log
  echo "creating log ... "
  touch $FILE

  # run all validations
  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.5 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.55 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.60 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.65 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.70 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.75 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.80 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.85 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.90 >> $FILE

  ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.95 >> $FILE

  # obtain averages
  echo "getting averages ... "
  grep -o 'IoU = .*' $FILE | cut -f2- -d:

else
  # obtain averages
  echo "getting averages ... "
  grep -o 'IoU = .*' $FILE | cut -f2- -d:

fi
