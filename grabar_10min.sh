#
#

video_prefix=mamacam1
video_interval=300
video_dir=/home/osboxes/Videos
echo " Recording Video / interval : $video_interval Segs"
while true;
do
video_name=`date +%d%m%Y_%H%M`
echo "Recording Video name : $video_name"
cvlc "rtsp://admin:20160404@181.45.72.255:554/onvif2" --sout file/ts:$video_prefix_$video_name.mp4 --stop-time=$video_interval vlc://quit
#echo $video_prefix-$video_name
sleep 1
done
