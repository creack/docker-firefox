docker-firefox-java
==============

Firefox over Docker via VNC including the necessary Java plugins to support working with DRAC5 in older Dell servers.  This is the product of not being able to access old Dell 1950 servers using current browsers.   This Docker image provides an easy way to spin up a browser with full support.

This Dockerfile is based on the work found here: https://github.com/creack/docker-firefox

How to execute:

1.  Build the docker image

    docker build -t="ktelep/docker-firefox-java" .

2.  Start the container

    docker run -p 5900:5900 x11vnc -forever -create 

3.  Connect to Firefox using your VNC client of choice on port 5900


