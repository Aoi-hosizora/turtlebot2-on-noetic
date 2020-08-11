# turtlebot2 in noetic

+ Inspired by https://answers.ros.org/question/355435/hi-i-am-using-kubuntu-2004-and-have-installed-ros-noetic-on-it-is-it-possible-to-install-turtlebot-software-on-ros-noetic-i-couldnot-find-any-liks-any/

> All turtlebot packages are fully stable on ROS Melodic so if you want to have those in a Noetic Distribution you may want to clone all the repositories in you catkin workspace and compile them in you enviroment. If you install all needed dependencies you should not have any problem since, generally speaking, any package stable in Melodic is likely to work properly under Noetic.

### Procedure

+ Details see [turtlebot2.sh](./turtlebot2.sh)

```bash
mkdir ./turtlebot2_ws/src/ -p
cd ./turtlebot2_ws/src/

source <xxx>/kobuki_ws/devel/setup.bash

sh ./turtlebot2.sh

cd ..
catkin_make

source ./devel/setup.bash
```

### Tips

+ These procedures are almost same with https://github.com/gaunthan/Turtlebot2-On-Melodic.
+ If `kobuki` is not be installed first, it will generate some errors: `Could not find a package configuration file provided by "kobuki_driver"`.

### Reference

+ https://answers.ros.org/question/355435/hi-i-am-using-kubuntu-2004-and-have-installed-ros-noetic-on-it-is-it-possible-to-install-turtlebot-software-on-ros-noetic-i-couldnot-find-any-liks-any/
+ https://github.com/gaunthan/Turtlebot2-On-Melodic
+ https://demura.net/robot/athome/15887.html
