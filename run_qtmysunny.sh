#！/bin/bash
xhost +
docker run --rm --network=host -itd --name qtmysunny --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 qubo188612/ubuntu20.04:qtmysunny

