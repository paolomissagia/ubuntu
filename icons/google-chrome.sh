cat <<EOF >~/.local/share/applications/google-chrome.desktop
[Desktop Entry]
Name=Google Chrome
Comment=Access the Internet
Exec=/usr/bin/google-chrome-stable --enable-features=TouchpadOverscrollHistoryNavigation %U
Icon=google-chrome
Terminal=false
Type=Application
Categories=Network;WebBrowser;
EOF
