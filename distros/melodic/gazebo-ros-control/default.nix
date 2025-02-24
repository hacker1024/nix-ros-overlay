
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-control";
  version = "2.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_control/2.8.7-1.tar.gz";
    name = "2.8.7-1.tar.gz";
    sha256 = "ecdf8af43115ba2e33784fc929f2a3db6c686ab9b5536e6276939ba846fd6b3e";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
