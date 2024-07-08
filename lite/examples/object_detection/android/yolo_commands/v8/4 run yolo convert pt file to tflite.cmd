echo off
echo start
echo https://docs.ultralytics.com/ru/integrations/tflite/#installation
echo https://docs.ultralytics.com/ru/modes/export/#arguments
echo https://github.com/ultralytics/ultralytics/tree/main/examples/YOLOv8-OpenCV-int8-tflite-Python
echo At start do: update ultralitics package.cmd

set CUDA_VISIBLE_DEVICES=0
rem yolo export model="D:\TEMP\YoloTrain\5_convert_pt_to_tflite\yolov8n_imgsz1024_ep1100.pt" format=tflite device=0 imgsz=1024 half=False int8=True data="D:\TEMP\YoloTrain\coco8.yaml"
rem yolo export model="yolov8n_imgsz1024_ep1100.pt" format=tflite device=0 imgsz=1024 int8
rem yolo export model="yolov8n_imgsz1024_ep1100.pt" format=tflite device=0 imgsz=1024 half=False int8=True data="D:\TEMP\YoloTrain\coco8.yaml"
rem yolo export model="yolov8s_imgsz1024_ep300_android_40.4.pt" format=tflite device=0 imgsz=1024 data="D:\TEMP\YoloTrain\coco8.yaml"
yolo export model="yolov8s_imgsz1024_ep300_android_40.4.pt" format=tflite device=0 imgsz=1024 half=False int8=True data="D:\TEMP\YoloTrain\coco8.yaml"
pause