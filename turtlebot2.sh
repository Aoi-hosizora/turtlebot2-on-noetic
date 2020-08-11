# Install kobuki in noetic, please install ros noetic first

# Clone some source code (from ros melodic)

# turtlebot2
git clone https://github.com/turtlebot/turtlebot.git
git clone https://github.com/turtlebot/turtlebot_msgs.git
git clone https://github.com/turtlebot/turtlebot_apps.git
git clone https://github.com/turtlebot/turtlebot_simulator

# kobuki
git clone https://github.com/yujinrobot/kobuki_msgs.git
git clone --single-branch --branch melodic https://github.com/yujinrobot/kobuki.git

mv kobuki/kobuki_description ./
mv kobuki/kobuki_node ./
mv kobuki/kobuki_keyop ./
mv kobuki/kobuki_safety_controller ./
mv kobuki/kobuki_bumper2pc ./
rm -rf kobuki

# yocs_controllers
git clone https://github.com/yujinrobot/yujin_ocs.git

mv yujin_ocs/yocs_cmd_vel_mux yujin_ocs/yocs_controllers .
rm -rf yujin_ocs
