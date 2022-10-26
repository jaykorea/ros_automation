#!/usr/bin/env zsh

source /home/fw/.zshrc

echo "Launching Application, please wait!"

terminator --new-tab -T "pm2" -e "zsh -c \"pm2 restart 1;exec zsh\"" &
terminator --new-tab -T "roscore" -e "zsh -c \"roscore;exec zsh\"" &
terminator --new-tab -T "init" -e "zsh -c  \"sleep 5s;roslaunch fw_rev_04_init fw_robot.launch;exec zsh\"" &
terminator --new-tab -T "cam" -e "zsh -c \"sleep 5s;roslaunch fw_rev_04_cam launch_d455_ekf_wheel_imu_jay.launch initial_reset:=false;exec zsh\"" &
terminator --new-tab -T "slam" -e "zsh -c \"sleep 5s;roslaunch fw_rev_04_rtabmap fw_navigation_stereo_test2_jay_2dlidar.launch rviz:=false database_path:=~/.ros/globalb1.db;exec zsh\"" &
terminator --new-tab -T "nav" -e "zsh -c \"sleep 5s;roslaunch fw_rev_04_navigation fw_move_base_teb.launch;exec zsh\"" &

