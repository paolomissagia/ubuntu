cat <<EOF >~/.local/share/applications/shutdown.desktop
[Desktop Entry]
Name=Shutdown
Exec=gnome-session-quit --power-off
Icon=system-shutdown
Terminal=false
Type=Application
Categories=System;
EOF
