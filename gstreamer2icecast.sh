gst-launch-0.10 -e  \
 jackaudiosrc buffer-time=2000000 blocksize=160000 provide-clock=1 connect=none !\
  audio/x-raw-float, channels=2 ! queue !\
   vorbisenc ! oggmux name=mux ! \
  shout2send mount=/six.ogg port=8000 password=streamy ip=127.0.0.1 #\
#  ximagesrc startx=1920 endx=3839 ! video/x-raw-rgb,framerate=30/1 ! \
#    ffmpegcolorspace ! videoscale ! video/x-raw-yuv,width=640,height=360 ! \
#    vp8enc ! queue ! mux.

#  v4l2src device=/dev/video0 ! \
#    video/x-raw-yuv,format=\(fourcc\)YUY2,width=1280,height=720,framerate=10/1 ! \
#    ffmpegcolorspace ! videoflip method=clockwise ! \
#    timeoverlay halign=right valign=top ! clockoverlay halign=left\
#    valign=top time-format="%Y/%m/%d %H:%M:%S" ! queue ! \
#    vp8.
#  ximagesrc startx=0 endx=1919 ! video/x-raw-rgb,framerate=10/1 ! \
#    ffmpegcolorspace ! videoscale ! video/x-raw-yuv,width=1920,height=1080 ! \
#    queue ! mix.sink_0 \
#  ximagesrc startx=0 endx=1919 ! video/x-raw-rgb,framerate=10/1 ! \
#    ffmpegcolorspace ! videoscale ! video/x-raw-yuv,width=480,height=270 ! \
#    vp8. \
#  v4l2src device=/dev/video1 ! \
#    video/x-raw-yuv,format=\(fourcc\)YUY2,width=1280,height=720,framerate=10/1 ! \
#    ffmpegcolorspace ! videoflip method=clockwise ! \
#    timeoverlay halign=right valign=top ! clockoverlay halign=left\
#    valign=top time-format="%Y/%m/%d %H:%M:%S" ! \
#    vp8.
#  v4l2src device=/dev/video1 ! \
#    video/x-raw-yuv,format=\(fourcc\)YUY2,width=280,height=,framerate=30/1 ! \
#    ffmpegcolorspace ! videoflip method=clockwise ! \
#    timeoverlay halign=right valign=top ! clockoverlay halign=left\
#    valign=top time-format="%Y/%m/%d %H:%M:%S" ! \
#    videorate ! video/x-raw-yuv,framerate=30/1 ! mix.sink_0
#  ximagesrc startx=0 endx=1919 ! video/x-raw-rgb,framerate=20/1 ! \
#    ffmpegcolorspace ! video/x-raw-yuv,width=1920,height=1080 !\
#    timeoverlay halign=right valign=top ! clockoverlay halign=left\
#    valign=top time-format="%Y/%m/%d %H:%M:%S" ! \
#    videoscale ! video/x-raw-yuv, width=800,height=450 ! \
#    mix.sink_0 

