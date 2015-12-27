#!/bin/bash
gst-launch-0.10 -e\
 v4l2src device=/dev/video2 ! video/x-raw-yuv, framerate=30/1, width=1920, height=1080 !\
  ffmpegcolorspace ! video/x-raw-yuv, framerate=30/1, width=1920, height=1080 !\
  videoflip method=clockwise ! \
 vp8enc quality=5 \
  bitrate=10000 min-quantizer=13 max-quantizer=13 ! \
  matroskamux name=mux ! filesink location=/home/six/Videos/capture_v4l2.mkv
