# kobuki on noetic

### Procedure

+ Details see [kobuki.sh](./kobuki.sh)

```bash
mkdir ./kobuki_ws/src/ -p
cd ./kobuki_ws/src/

# clone some source code
sh ./kobuki.sh

# make
cd ../
catkin_make

# source
source ./devel/setup.bash
```

+ `src` tree

```tree
.
├── ecl_core
├── ecl_lite
├── ecl_navigation
├── ecl_tools
├── kobuki
├── kobuki_core
├── kobuki_msgs
├── yocs_cmd_vel_mux
└── yocs_controllers
```

### Tips

+ Only clone the `yujinrobot/kobuki` repo and `catkin_make` it will generate `Could not find a package configuration file provided by "kobuki_msgs"`, so add `yujinrobot/kobuki_msgs`.
+ Then error messages turn to `Could not find a package configuration file provided by "yocs_controllers"`, with referenced from [install_basic.sh](https://github.com/gaunthan/Turtlebot2-On-Melodic/blob/master/install_basic.sh), it needs to clone `yujinrobot/yujin_ocs`.
+ Same, `Could not find a package configuration file provided by "kobuki_dock_drive"`, add `yujinrobot/kobuki_core`.
+ Same, `Could not find a package configuration file provided by "ecl_mobile_robot"`, with referenced from [kobuki_core.rosinstall](https://raw.githubusercontent.com/yujinrobot/kobuki_core/melodic/kobuki_core.rosinstall), add `stonier/ecl_*`.
+ Finally, `source ./devel/setup.bash` and finish.

### Reference

+ https://github.com/yujinrobot/kobuki
+ https://github.com/gaunthan/Turtlebot2-On-Melodic
+ https://github.com/kobuki-base/kobuki_core
