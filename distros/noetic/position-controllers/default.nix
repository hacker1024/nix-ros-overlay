
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "c500dd7552be7a2cc00d187813d1d36247e7cebbd4c732a393a747fb7c7ae091";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface forward-command-controller hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
