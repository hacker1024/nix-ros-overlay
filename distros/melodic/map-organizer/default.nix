
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, map-organizer-msgs, map-server, nav-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-map-organizer";
  version = "0.12.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/map_organizer/0.12.2-1.tar.gz";
    name = "0.12.2-1.tar.gz";
    sha256 = "d0d2f3b440a67d9cdb2aaea9d53a562eb4a68528827e807096e3dc2ba7c95604";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs map-organizer-msgs map-server nav-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
