#!/usr/bin/env sh

# kill all running polybars
killall -q polybar

# wait for them to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar instances
polybar main

echo "Polybar configuration launched."
