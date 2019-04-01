#!/bin/bash

killall conky

# time (in s) for the DE to start; use ~20 for Gnome or KDE, less for Xfce/LXDE etc
sleep 5

# the main conky with rings
conky -c ~/.config/conky/rings --daemonize --quiet --pause=7

# time for the main conky to start; needed so that the smaller ones draw above not below (probably can be lower, but we still have to wait 5s for the rings to avoid segfaults)
sleep 1

conky -c ~/.config/conky/cpu --daemonize --quiet
conky -c ~/.config/conky/ram --daemonize --quiet
conky -c ~/.config/conky/network --daemonize --quiet
conky -c ~/.config/conky/disk --daemonize --quiet
conky -c ~/.config/conky/clock --daemonize --quiet
