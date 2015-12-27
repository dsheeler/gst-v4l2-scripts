#!/bin/bash
gst-launch-0.10 -e\
 ximagesrc show-pointer=true startx=0 starty=0 endx=1919\
  endy=1079 ! video/x-raw-rgb,framerate=10/1 ! ffmpegcolorspace !\
  'video/x-raw-yuv,width=1920,height=1080' !\
  vp8enc quality=6 threads=6 ! queue !\
  webmmux name=mux ! filesink location=/home/six/Videos/$1.webm \
 jackaudiosrc provide-clock=1 buffer-time=200000000 connect=none !\
  audio/x-raw-float, channels=2 !\
  vorbisenc ! mux.

# ximagesrc startx=0 endx=3840 starty=0 endy=1080 ! \
# framerate=20/1 ! \
# ffmpegcolorspace !\
#  vp8.  #\
# jackaudiosrc buffer-time=2000000 blocksize=160000 provide-clock=1 connect=none !\
#  audio/x-raw-float, channels=2 !\
#   vorbisenc ! mux.

# !\
# xvimagesink\
  #videoscale method=0 ! video/x-raw-yuv, width=1920, height=540 !\

