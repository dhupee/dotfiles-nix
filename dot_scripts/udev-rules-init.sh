#!/bin/bash

# ! NOTE: FOR ARCH BASED ONLY
# based on https://docs.platformio.org/en/latest/core/installation/udev-rules.html

# install udev rules
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules

# Restart “udev” management tool
sudo udevadm control --reload-rules
sudo udevadm trigger

# add user to uucp
sudo usermod -a -G uucp $USER
sudo usermod -a -G lock $USER
