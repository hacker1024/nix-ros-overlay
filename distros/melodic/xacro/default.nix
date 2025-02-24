
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.18-1.tar.gz";
    name = "1.13.18-1.tar.gz";
    sha256 = "92576c8fd6939763933cac849cfd10559d134c24deee9336936e551bc4186ab6";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Xacro (XML Macros)

    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
