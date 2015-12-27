#!/bin/bash
gst-launch-0.10 -e\
  filesrc location=/home/six/Videos/soundshapedemo.ogv !\
  oggdemux name=demux   matroskamux name=mux ! filesink \
  location=/home/six/Videos/cropped.mkv \
  demux. ! vorbisdec ! vorbisenc ! queue ! mux. \
  demux. ! theoradec ! vp8enc ! queue ! mux.
# !\
# xvimagesink\
  #videoscale method=0 ! video/x-raw-yuv, width=1920, height=540 !\

