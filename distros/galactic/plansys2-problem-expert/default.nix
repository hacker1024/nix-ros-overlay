
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, qt5, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-problem-expert";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_problem_expert/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "61e39df4dc7b45d01edcaaab52f8e3742235232a90fde79d44f87a390a4aa950";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-domain-expert plansys2-msgs plansys2-pddl-parser qt5.qtbase rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Problem Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
