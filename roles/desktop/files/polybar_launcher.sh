#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
polybar default 2>&1 | tee -a /tmp/polybar_default.log & disown
#polybar <bar_name> 2>&1 | tee -a /tmp/polybar_bar_name.log & disown

echo "Bars launched..."
