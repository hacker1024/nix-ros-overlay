
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python3Packages, pythonPackages, rclpy, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-iron-ros2lifecycle";
  version = "0.25.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2lifecycle/0.25.2-1.tar.gz";
    name = "0.25.2-1.tar.gz";
    sha256 = "b286bd5c61abe8d29de2b1f689e309069e6f7827f2cabc2c22b17136255ff1b2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
