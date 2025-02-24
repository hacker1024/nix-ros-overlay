
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt5, rosbuild }:
buildRosPackage {
  pname = "ros-melodic-python-qt-binding";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/python_qt_binding-release/archive/release/melodic/python_qt_binding/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "81666239682642c2c08f0a507f113efe4df1cd7f2cb778d3d02d913bcfa68478";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase rosbuild ];
  propagatedBuildInputs = [ catkin pythonPackages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide is released under
    the LGPL.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called &quot;Shiboken&quot;.  For PyQt,
    this is called &quot;SIP&quot;.

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
