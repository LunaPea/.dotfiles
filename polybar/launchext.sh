#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar default &
polybar defaultext &

echo "Polybar launched..."
