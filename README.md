# Dockerized-Virtualbox
## RUN script
mkdir ~/vm 

xhost + 

docker run -ti --rm --name=dockerized-virtualbox -v ~/vm/:/home/virtualbox/vm/ -e DISPLAY=$DISPLAY
-v /tmp/.X11-unix:/tmp/.X11-unix:ro --privileged=true windsor106/dockerized-virtualbox
## To Do
1. Testing
