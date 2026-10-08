#!/usr/bin/env bash

cat <<EOF >~/.local/share/applications/lock.desktop
[Desktop Entry]
Name=Lock
Exec=loginctl lock-session
Icon=system-lock-screen
Terminal=false
Type=Application
Categories=Utility;System;
EOF
