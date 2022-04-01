#!/bin/sh

for share_path in $(catkin_find --share | tac); do
    OPENRAVE_PLUGINS="${share_path}/openrave-/plugins:${OPENRAVE_PLUGINS}"
    OPENRAVE_DATA="${share_path}/openrave-/data:${OPENRAVE_DATA}"
    OPENRAVE_DATABASE="${share_path}/openrave-/databases:${OPENRAVE_DATABASES}"
done

export OPENRAVE_PLUGINS OPENRAVE_DATA OPENRAVE_DATABASES
