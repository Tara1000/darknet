#!/bin/bash

# print files from dir
# specify the folder where coco2014 val2014 is located to construct validation list
find /your/drive/here/coco2014/val2014 -type f -printf "cocotest/images/val2014/%f\n" > data/trainbig.txt
