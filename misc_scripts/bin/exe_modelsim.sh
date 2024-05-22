#!/bin/sh

sudo docker run\
    --rm\
    -ti\
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw\
    -v "$(pwd)":/home/usuari:rw\
    -e DISPLAY=$DISPLAY\
    -e LD_LIBRARY_PATH=/root/altera/13.0sp1/modelsim_ase/lib32\
    -e HOME=/home/usuari\
    --user=$(id -u):$(id -g)\
    --ipc=host --cap-add=SYS_PTRACE\
    --security-opt seccomp=unconfined\
    registry.gitlab.com/axtaor/practicas-ac2:latest\
    /root/altera/13.0sp1/modelsim_ase/linux/vsim -do /home/usuari/test_files/runsim.tcl
