#!/bin/sh

{
	sleep 1
	export DISPLAY=":0"
	export XAUTHORITY="/home/wera/.Xauthority"
	xset r rate 300 100
} &

# cat /etc/udev/rules.d/00-keyboard.rules
# ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="8d1d", ATTRS{idProduct}=="9d9d", RUN+="/home/wera/.xsetrate.sh"
#                                                    ↑↑↑↑                      ↑↑↑↑

# lsusb
# Bus 003 Device 009: ID 8d1d:9d9d splitkb Kyria rev2
#                        ↑↑↑↑ ↑↑↑↑
