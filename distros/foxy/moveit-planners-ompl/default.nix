
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, llvmPackages, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rclcpp, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-planners-ompl";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_planners_ompl/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "b030972f0be9cb2d5004e3ad4cceb23e55be2ac6072d35ba6b5a3c88bda5cb69";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common eigen moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-resources-pr2-description tf2-eigen ];
  propagatedBuildInputs = [ llvmPackages.openmp moveit-core moveit-msgs moveit-ros-planning ompl pluginlib rclcpp tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
