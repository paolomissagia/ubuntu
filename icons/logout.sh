cat <<EOF >~/.local/share/applications/logout.desktop
[Desktop Entry]
Name=Lock
Exec=gnome-session-quit --logout --no-prompt
Icon=system-log-out
Terminal=false
Type=Application
Categories=Utility;System;
EOF
