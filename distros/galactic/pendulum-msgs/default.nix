
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-pendulum-msgs";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/galactic/pendulum_msgs/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "4f19d33a2ee07db51a3b3ff07fc842ba4d2c0d88059dcedfd439eaed26bb9760";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
