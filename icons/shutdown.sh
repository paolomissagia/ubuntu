cat <<EOF >~/.local/share/applications/shutdown.desktop
[Desktop Entry]
Name=Shutdown
Exec=systemctl poweroff
Icon=system-shutdown-symbolic
Terminal=false
Type=Application
Categories=System;
EOF
