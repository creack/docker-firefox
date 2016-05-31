docker-firefox-java
==============

Firefox over Docker via VNC including the necessary Java plugins to support working with a bunch of old Java/Web based management interfaces, such as old Dell DRAC, or Brocade FC switches.  This is the product of not being able to access old Dell 1950 servers using current browsers.   This Docker image provides an easy way to spin up a browser with full support.

This Dockerfile is based on the work found here: https://github.com/creack/docker-firefox

How to execute:

1.  Build the docker image


    docker build -t="ktelep/docker-firefox-java" .


2.  Start the container


    docker run -p 5900:5900 ktelep/docker-firefox-java x11vnc -forever -create 


3.  Connect to Firefox using your VNC client of choice on port 5900 


You may wish to add a -v <localpath>:<containerpath> if you want to use Virtual Media or the like to mount ISOs for loading Operating Systems/etc. on servers.


