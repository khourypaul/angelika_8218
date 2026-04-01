#!/bin/bash
source /opt/ros/noetic/setup.bash
source /home/razer/catkin_ws_assistive/install/setup.bash

check_roscore()
{
  rosnode list
  roscore_exist=$?
}

check_roscore
if [ $roscore_exist -ne 0 ]; then
  echo "roscore not running! Running it as background process"
  roscore &

  while [ $roscore_exist -eq 0 ]; do
    echo 'Waiting for roscore...'
    sleep 0.2
    check_roscore
  done
  sleep 1
fi

rosrun rosbag_editor rosbag_editor
