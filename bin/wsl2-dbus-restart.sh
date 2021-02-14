#!/bin/bash
sudo sh -c "dbus-uuidgen > /var/lib/dbus/machine-id"
sudo service dbus restart
