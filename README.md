# My-Ros-Packages

- First some `git` terminal commands

````
git init
git status 
git add .
git status 
git commit -m "Some commits"
git remote add origin https://github.com/Samitama/my-ros-packages.git
git push -u origin main 
````

- Don't forget set a `ROS_MASTER_URI` and `ROS_HOSTNAME`

- Create a package ROS

````
mkdir -p catkin_ws/src
cd catkin_ws/src
catkin_create_pkg <package_name> [depend1] [depend2] [depend3]
````

- Building a catkin workspace 

````
cd ~/catkin_ws
catkin_make
````

