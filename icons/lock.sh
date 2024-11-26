cat <<EOF >~/.local/share/applications/lock.desktop
[Desktop Entry]
Name=Lock
Exec=loginctl lock-session
Icon=application-exit-symbolic
Terminal=false
Type=Application
Categories=System;
EOF
