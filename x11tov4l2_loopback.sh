#!/bin/bash
gst-launch-0.10 -e\
 ximagesrc startx=0 starty=0 endx=1919 endy=1079 show-pointer=true  !\
  video/x-raw-rgb,width=1920,height=1080 ! ffmpegcolorspace !\
  v4l2sink device=/dev/video3
 ## ffmpegcolorspace !\

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

