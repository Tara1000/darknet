# darknet
### Darknet-53 adaption based on version by [AlexeyAB](https://github.com/AlexeyAB/darknet) built on the original by [pjreddie](https://github.com/pjreddie/darknet)

More details: [http://pjreddie.com/darknet/yolo/](http://pjreddie.com/darknet/yolo/)

Darknet needs gcc 7+, CUDA 10.0, CuDNN 7.3.x, OPENCV 2.4+ to run (tested only on Ubuntu 18-04)

Detailed instructions: [https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet)

COCO 2014 data set can be downloaded from [http://cocodataset.org/#download](http://cocodataset.org/#download)

Get weights and data labels from YOLOv3 folder at [https://drive.google.com/open?id=1qlXjT-P6vgZk6NylAo7JeJREKY3jccNV](https://drive.google.com/open?id=1qlXjT-P6vgZk6NylAo7JeJREKY3jccNV)

How to test YOLOv3 with a single image:

`> ./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights -ext_output data/yourimage.jpg`

To test on a batch of files defined in config file cfg/coco.data

`> ./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights`

To validate on a batch of files with IoU threshold 0.75

`> ./darknet detector map data/obj.data cfg/yolov3.cfg yolov3.weights -iou_thresh 0.75`

For more things Darknet and YOLOv3 can do, see [https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet)

IoU=0.5:0.95 custom validation on a batch of images linked in cfg/coco.data:

`./scripts/avg_valid_range_coco.sh`

To get inference times of a batch of images linked in cfg/coco.data:

`> ./scripts/inf_coco.sh`

If files are missing to run or build the code see [https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet) or pre-project AlexeyAB Darknet source from [https://drive.google.com/open?id=1qlXjT-P6vgZk6NylAo7JeJREKY3jccNV](https://drive.google.com/open?id=1qlXjT-P6vgZk6NylAo7JeJREKY3jccNV)

Guides for help with troubleshooting during install:
[https://saferauto.home.blog/2019/04/06/4o-how-to-install-yolo-darknet-with-cuda-and-opencv-in-ubuntu/](https://saferauto.home.blog/2019/04/06/4o-how-to-install-yolo-darknet-with-cuda-and-opencv-in-ubuntu/)

[http://blog.lpchen.me/2018/10/02/Install-CUDA-10-0-with-cuDNN-7-3-1-on-Ubuntu-18-04-bionic/](http://blog.lpchen.me/2018/10/02/Install-CUDA-10-0-with-cuDNN-7-3-1-on-Ubuntu-18-04-bionic/)

[https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)
