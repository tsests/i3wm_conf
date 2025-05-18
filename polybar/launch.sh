#!/bin/bash

# Terminate already running bar instances
pkill -x polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar -c ~/.config/polybar/config.ini first 2>&1 | tee -a /tmp/polybar_first.log & disown
polybar -c ~/.config/polybar/config.ini center 2>&1 | tee -a /tmp/polybar_center.log & disown
polybar -c ~/.config/polybar/config.ini right 2>&1 | tee -a /tmp/polybar_right.log & disown

# Launch additional scripts

#~/.config/polybar/scripts/nowPlayingLauncher.sh & disown
#~/.config/polybar/scripts/cavaLauncher.sh & disown

echo "Polybar launched..."

