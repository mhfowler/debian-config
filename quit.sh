WINDOW_ID=$(xdotool getwindowfocus)
echo $WINDOW_ID
xdotool windowkill $WINDOW_ID
