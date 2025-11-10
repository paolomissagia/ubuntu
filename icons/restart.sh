cat <<EOF >~/.local/share/applications/reboot.desktop
[Desktop Entry]
Name=Restart
Exec=gnome-session-quit --reboot
Icon=system-reboot
Terminal=false
Type=Application
Categories=System;
EOF
