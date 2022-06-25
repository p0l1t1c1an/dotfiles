#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#Path for custom scripts
export PATH=$PATH:$HOME/bin

# Launch Polybar, using default config location ~/.config/polybar/config
polybar HDMI3 &
polybar HDMI2 &

