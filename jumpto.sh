#!/usr/bin/env bash
WD=/home/notplants/computer/config/debian
WHICH_APP=$1
if $WD/what_is_running.sh | grep -q -i $WHICH_APP; then
   echo "++ already running"
   FOCUS=$(xdotool getwindowfocus)
   APP_WINDOWS=$(xdotool search --desktop 0 --class $WHICH_APP)
   echo $APP_WINDOWS > /tmp/test.txt
   echo \n >> /tmp/test.txt
   echo $FOCUS >> /tmp/test.txt
   if echo $APP_WINDOWS | grep $FOCUS; then
	echo "++ hiding"
	#xdotool getactivewindow windowminimize
	WINDOWS=$(xdotool search --desktop 0 --class $WHICH_APP)
	echo $WINDOWS > /tmp/t.txt
	windows=($(echo "$WINDOWS" | tr '\n' '\n'))
	echo "${#windows[@]}" >> /tmp/t.txt
	for i in "${windows[@]}"
        do
         echo "++ hiding $i" >> /tmp/t.txt
	     xdotool windowminimize $i
    done
   else
	echo "++ focusing"
	WINDOWS=$(xdotool search --desktop 0 --class $WHICH_APP)
	echo $WINDOWS > /tmp/t.txt
	windows=($(echo "$WINDOWS" | tr '\n' '\n'))
	echo "${#windows[@]}" >> /tmp/t.txt
	for i in "${windows[@]}"
        do
         echo "++ raising $i" >> /tmp/t.txt
	 xdotool windowactivate $i
	 xdotool windowraise $i
        done
   fi
else
   echo "++ starting app"
   gtk-launch $WHICH_APP.desktop
fi
