
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, nodelet, openslam-gmapping, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-gmapping";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/melodic/gmapping/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "2296a00ee0763992b9b67cff969f3e7c8021e14df878d351406104a4c321e4af";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ nav-msgs nodelet openslam-gmapping roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
