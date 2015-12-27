#!/bin/bash
gst-launch-1.0 -e\
 ximagesrc show-pointer=true startx=2560 starty=0 endx=3200\
  endy=480 ! video/x-raw,framerate=30/1 ! videoconvert !\
  vp8enc min_quantizer=63 max_quantizer=63 cpu-used=5 \
  threads=6 ! queue ! webmmux name=mux ! filesink\
  location=/home/six/Videos/$1.webm \
 jackaudiosrc buffer-time=200000000 connect=none !\
  audio/x-raw,channels=2 ! audioconvert !\
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

