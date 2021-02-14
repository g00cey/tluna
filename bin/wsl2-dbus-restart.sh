#!/bin/bash
sudo sh -c "dbus-uuidgen > /var/lib/dbus/machine-id"
sudo service dbus restart
xset -r 49  > /dev/null 2&>1
(fcitx-autostart > /dev/null 2&>1 &)
