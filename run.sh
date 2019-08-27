#!/bin/sh

apt-get update
apt-get -y install ansible

cd /robot
ansible-playbook install-robot-framework.yaml

cd /robot
HOME=/root \
xvfb-run \
--server-args="-screen 0 1920x1080x24 -ac" \
robot \
-v BROWSER:firefox \
--outputDir /robot/reports \
/robot/test


PATH=/opt/robotframework/bin/:$PATH \
xvfb-run \
--server-args="-screen 0 1920x1080x24 -ac" \
robot \
-v BROWSER:chrome \
--outputDir /robot/reports \
/robot/test
