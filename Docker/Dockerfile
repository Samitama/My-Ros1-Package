FROM osrf/ros:noetic-desktop

ARG USERNAME=sami

RUN apt-get update && apt-get install -y \
    python3-catkin-tools \
    build-essential \
    python3-rosinstall \
    python3-rosinstall-generator \
    python3-wstool \
    nano \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /etc/ros/rosdep/sources.list.d/*

RUN apt install python3-rosdep

RUN sudo rosdep init && sudo rosdep update

RUN adduser --disabled-password --gecos "" $USERNAME

USER $USERNAME

WORKDIR /home/$USERNAME

RUN mkdir -p catkin_ws/src

WORKDIR /home/$USERNAME/catkin_ws

RUN /bin/bash -c "source /opt/ros/noetic/setup.bash; catkin_make"

CMD ["bash"]
