xinput set-prop 11 "libinput Scrolling Pixel Distance" 40

FILE="/usr/share/X11/xorg.conf.d/40-libinput.conf"
sudo sed -i '/Identifier "libinput touchpad catchall"/,/EndSection/ s/EndSection/    Option "ScrollPixelDistance" "40"\nEndSection/' "$FILE"
