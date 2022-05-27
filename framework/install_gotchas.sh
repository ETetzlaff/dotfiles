#! /bin/bash

# Deep sleep to avoid battery eating with lid closed
# This needs to actually be placed at the end of the options line in the file.
# echo mem_sleep_default=deep >> /boot/efi/loader/entries/pop_OS-current.conf
# Need to validate sudo cat /sys/power/mem_sleep == s2idle [deep]

# Screen tearing
echo '''
Section "Device"
  Identifier "Intel Graphics"
  Driver "intel"
  Option "TearFree" "true"
EndSection
'''> /etc/X11/xorg.conf.d/20-intel.conf
