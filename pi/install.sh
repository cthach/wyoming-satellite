#!/bin/sh

set -e

sudo cp pi/satellite.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable satellite.service 
