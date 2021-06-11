
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, eigenpy, git, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/noetic/pinocchio/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "e3cbc64999563f286763e321db3b76957ad10d34b30a6c63aed1e1544140fced";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
