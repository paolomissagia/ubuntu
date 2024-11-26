cat <<EOF >~/.local/share/applications/restart.desktop
[Desktop Entry]
Name=Restart
Exec=systemctl reboot
Icon=system-reboot-symbolic
Terminal=false
Type=Application
Categories=System;
EOF
