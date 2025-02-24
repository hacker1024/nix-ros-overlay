
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-galactic-paho-mqtt-c";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/galactic/paho-mqtt-c/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "4065db87b9427a0f606aa7ebd727cc950047be1a4fdd5af57f19ae44a83228c0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Paho C Client Library for the MQTT Protocol'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
