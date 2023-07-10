#！/bin/bash
mkdir DATA
mkdir SAVE
xhost +
docker run --rm --network=host -itd --name qtmysunny \
--mount type=bind,source=./SAVE,destination=/workspace/qtmysunny/SAVE \
--mount type=bind,source=./DATA,destination=/workspace/qtmysunny/DATA \
--privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 -v /path/to/host/home:/path/to/contatiner/home --env LANG=C.UTF-8 qubo188612/ubuntu20.04:qtmysunny

