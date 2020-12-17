#!/usr/bin/env bash
echo "running test"
if ! xdotool search --desktop 0 --class "pycharm"; then
    echo "pycharm not running, opening it"
    /home/notplants/computer/tools/pycharm-2019.1.4/bin/pycharm.sh
else
    echo "pycharm is running, bringing to front"
    xdotool search --desktop 0 --class "pycharm" windowactivate
fi
