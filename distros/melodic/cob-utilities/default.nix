
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-utilities";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_utilities/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "2414d5e8f2303fe05fb3a2c46d9850c2ac9fb6b97666022ebcbec94c4be48fbc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Deprecated
    &quot;cob_utilities&quot; subsumes a number of classes, which are used in the original COb3 software. E.g. &quot;IniFile.h&quot; supports the original inifile structure of Care-O-bot 3. &quot;MathSup.h&quot; provides some basic functions like conversion from degree to radion or norming of angles within +/- PI. The package is currently used while the drivers are ported to ROS and Orocos respectively. Midterm it shall be removed and the ROS structures shall be used for reading parameters during initialization. So, don't use this package in new code!'';
    license = with lib.licenses; [ asl20 ];
  };
}
