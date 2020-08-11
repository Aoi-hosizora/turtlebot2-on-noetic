# turtlebot2-on-noetic

+ My installing procedure about turtlebot2 on neotic (ubuntu 20.04 focal)

## Kobuki

+ You need to install this first.

### Procedure

+ Details see [kobuki.sh](./kobuki.sh)

```bash
# create workspace
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

### Tips

+ Only clone the `yujinrobot/kobuki` repo and `catkin_make` it will generate `Could not find a package configuration file provided by "kobuki_msgs"`, so add `yujinrobot/kobuki_msgs`.
+ Then error messages turn to `Could not find a package configuration file provided by "yocs_controllers"`, with referenced from [install_basic.sh](https://github.com/gaunthan/Turtlebot2-On-Melodic/blob/master/install_basic.sh), it needs to clone `yujinrobot/yujin_ocs`.
+ Same, `Could not find a package configuration file provided by "kobuki_dock_drive"`, add `yujinrobot/kobuki_core`.
+ Same, `Could not find a package configuration file provided by "ecl_mobile_robot"`, with referenced from [kobuki_core.rosinstall](https://raw.githubusercontent.com/yujinrobot/kobuki_core/melodic/kobuki_core.rosinstall), add `stonier/ecl_*`.
+ Finally, `source ./devel/setup.bash` and finish.

## Turtlebot2

+ Inspired by [Is it possible to install Turtlebot software on ROS Noetic ??](https://answers.ros.org/question/355435/hi-i-am-using-kubuntu-2004-and-have-installed-ros-noetic-on-it-is-it-possible-to-install-turtlebot-software-on-ros-noetic-i-couldnot-find-any-liks-any/)

> All turtlebot packages are fully stable on ROS Melodic so if you want to have those in a Noetic Distribution you may want to clone all the repositories in you catkin workspace and compile them in you enviroment. If you install all needed dependencies you should not have any problem since, generally speaking, any package stable in Melodic is likely to work properly under Noetic.

### Procedure

+ Details see [turtlebot2.sh](./turtlebot2.sh)

```bash
# create workspaces
mkdir ./turtlebot2_ws/src/ -p
cd ./turtlebot2_ws/src/

# setup envroinment of mkbuki
source <xxx>/kobuki_ws/devel/setup.bash

# clone some source code
sh ./turtlebot2.sh

# make
cd ..
catkin_make

# source
source ./devel/setup.bash
```

### Tips

+ These procedures are almost same with https://github.com/gaunthan/Turtlebot2-On-Melodic.
+ If `kobuki` is not be installed first, it will generate some errors: `Could not find a package configuration file provided by "kobuki_driver"`.

## References

+ [gaunthan/Turtlebot2-On-Melodic:install_basic.sh](https://github.com/gaunthan/Turtlebot2-On-Melodic/blob/master/install_basic.sh)
+ [yujinrobot/kobuki_core:kobuki_core.rosinstall](https://github.com/yujinrobot/kobuki_core/blob/melodic/kobuki_core.rosinstall)
+ [Is it possible to install Turtlebot software on ROS Noetic ??](https://answers.ros.org/question/355435/hi-i-am-using-kubuntu-2004-and-have-installed-ros-noetic-on-it-is-it-possible-to-install-turtlebot-software-on-ros-noetic-i-couldnot-find-any-liks-any/)
+ [Jetson Xavier: Turtlebot2をROS Melodicで動かす](https://demura.net/robot/athome/15887.html)
