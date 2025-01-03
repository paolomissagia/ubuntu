cat <<EOF >~/.local/share/applications/reboot.desktop
[Desktop Entry]
Name=Reboot
Exec=gnome-session-quit --reboot --no-prompt
Icon=system-reboot
Terminal=false
Type=Application
Categories=System;
EOF
