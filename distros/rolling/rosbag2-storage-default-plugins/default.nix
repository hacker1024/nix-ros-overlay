
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-default-plugins";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_default_plugins/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "fb17c318c533a7d7f8bd3cefb82f98b4009980085792f4cc6bcf8014cfe27d3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbag2-storage-mcap rosbag2-storage-sqlite3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Intermediate metapackage to point at default storage plugin(s) for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
