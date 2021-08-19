# ds4-trackpad-disable
Simple bash shell script and udev rule to prevent the Dualshock 4 touchpad being used as a laptop-style trackpad.

# Installation
- Copy the udev rules file to /etc/udev/rules.d, changing the /path/to/ps4paddisable.sh attribute of each line to where the shell script itself is installed
- Change the line "export $HOME=/home/user" to your home directory

There is no need to put the script in a specific place as long as it's the same path as in the udev rule.
