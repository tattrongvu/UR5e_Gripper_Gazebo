#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/universal_robot/ur_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install/lib/python2.7/dist-packages:/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build" \
    "/usr/bin/python2" \
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/universal_robot/ur_driver/setup.py" \
     \
    build --build-base "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/universal_robot/ur_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install" --install-scripts="/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install/bin"
