gst-launch-0.10 -e v4l2src device=/dev/video2 !\
video/x-raw-yuv,format=\(fourcc\)YUY2,width=1280,height=720,framerate=5/1 ! \
     ffmpegcolorspace ! videoflip method=clockwise ! \
        timeoverlay halign=right valign=top ! clockoverlay halign=left\
        valign=top time-format="%Y/%m/%d %H:%M:%S" ! \
        videorate ! video/x-raw-yuv,framerate=1/1 ! ffmpegcolorspace ! \
        pngenc snapshot=false ! multifilesink location=/srv/http/webcam.png
