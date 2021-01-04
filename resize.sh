#!/usr/bin/env bash


HALFW=300
FULLH=600
QUARTW=300
QUARTH=300

FOCUS=$(xdotool getwindowfocus)
echo "++ moving and resizing $FOCUS"

echo $1

HALFW="47%"
HALFH="83%"
QW="20%"
QH="20%"

if [ $1 == 'l' ]; then
    echo "++ left"
    xdotool windowsize $FOCUS $HALFW $HALFH
    xdotool windowmove $FOCUS 50 150
fi

if [ $1 == 'r' ]; then
    echo "++ right"
    xdotool windowsize $FOCUS $HALFW $HALFH
    xdotool windowmove $FOCUS 1450 150
fi

if [ $1 == '1' ]; then
    echo "++ screen1"
    xdotool windowsize $FOCUS $QW $QH
#    xdotool windowmove $FOCUS 50 150
fi


if [ $1 == '2' ]; then
    echo "++ screen2"
    xdotool windowsize $FOCUS 45% 83%
    xdotool windowmove $FOCUS 1000 150
fi

if [ $1 == '3' ]; then
    echo "++ screen3"
    xdotool windowsize $FOCUS 45% 83%
    xdotool windowmove $FOCUS 50 150
fi

if [ $1 == '4' ]; then
    echo "++ screen4"
    xdotool windowsize $FOCUS 45% 83%
    xdotool windowmove $FOCUS 50 150
fi

if [ $1 == 'f' ]; then
    echo "++ fullscreen"
    xdotool windowmove $FOCUS 0 0
    xdotool windowsize $FOCUS 100% 100%
fi

if [ $1 == 'c' ]; then
    echo "++ screen2"
    xdotool windowsize $FOCUS 1896 1493
    xdotool windowmove $FOCUS 457 150
fi
