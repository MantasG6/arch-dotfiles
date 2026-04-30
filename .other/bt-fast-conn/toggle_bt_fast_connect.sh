#!/bin/bash

AC_STATE=$(cat /sys/class/power_supply/AC/online)

# Wait for hci0 to be ready (up to 10s)
i=0
while ! bluetoothctl show | grep -q "Controller"; do
  sleep 0.5
  i=$((i + 1))
  [ "$i" -ge 20 ] && echo "Timeout waiting for BT controller" && exit 1
done

if [ "$AC_STATE" -eq 1 ]; then
    /usr/bin/bluetoothctl mgmt.fast-conn on
else
    /usr/bin/bluetoothctl mgmt.fast-conn off
fi
