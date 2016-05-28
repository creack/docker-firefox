# Firefox over VNC
#
# VERSION               0.1
# DOCKER-VERSION        0.2

from	ubuntu:14.04
# make sure the package repository is up to date

run	echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run	apt-get update

# Install vnc, xvfb in order to create a 'fake' display and firefox
run     apt-get -y install wget
run     wget --no-check-certificate https://launchpad.net/ubuntu/+archive/primary/+files/tzdata-java_2016d-0ubuntu0.14.04_all.deb
run     dpkg -i tzdata-java_2016d-0ubuntu0.14.04_all.deb
run	apt-get install -y x11vnc xvfb firefox icedtea-6-plugin icedtea-netx openjdk-6-jre openjdk-6-jre-headless tzdata-java
run	mkdir ~/.vnc
# Setup a password
run	x11vnc -storepasswd 1234 ~/.vnc/passwd
# Autostart firefox (might not be the best way to do it, but it does the trick)
run	bash -c 'echo "firefox" >> ~/.bashrc'
