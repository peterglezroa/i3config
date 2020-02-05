#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d' ' -f1); do
    if [ "$m" = "HDMI-1" ] 
    then
      MONITOR=$m polybar --reload HDMI-1 &
    else
      MONITOR=$m polybar --reload peterglezroa &
    fi
  done
else
  polybar peterglezroa >>/tmp/polybarpeterglezroa.log 2>&1 &
  echo "Bar launched..."
fi
