# Firefox over VNC
#
# VERSION               0.1

from	ubuntu:20.04
# make sure the package repository is up to date
run	apt-get update

# Install vnc, xvfb in order to create a 'fake' display and firefox
run	apt-get install -y x11vnc xvfb firefox
run	mkdir ~/.vnc
# Setup a password
run	x11vnc -storepasswd 1234 ~/.vnc/passwd
# Autostart firefox (might not be the best way to do it, but it does the trick)
run	bash -c 'echo "firefox" >> /.bashrc'
