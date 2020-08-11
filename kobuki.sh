# Install kobuki in noetic, please install ros noetic first

# Clone some source code (from ros melodic)

# kobuki
git clone --branch melodic https://github.com/yujinrobot/kobuki.git

# kobuki_msgs
git clone --branch release/0.7-melodic https://github.com/yujinrobot/kobuki_msgs.git

# yocs_controllers
git clone https://github.com/yujinrobot/yujin_ocs.git
mv yujin_ocs/yocs_cmd_vel_mux yujin_ocs/yocs_controllers .
rm -rf yujin_ocs/

# kobuki_core
git clone --branch melodic https://github.com/yujinrobot/kobuki_core.git

# ecl_*
git clone --branch release/0.61-noetic https://github.com/stonier/ecl_tools.git
git clone --branch release/0.61-noetic https://github.com/stonier/ecl_lite.git
git clone --branch release/0.62-noetic https://github.com/stonier/ecl_core.git
git clone --branch release/0.60-melodic https://github.com/stonier/ecl_navigation.git 
