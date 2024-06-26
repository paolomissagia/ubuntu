FILE="/usr/share/applications/google-chrome.desktop"

sudo sed -i '0,/Exec=\/usr\/bin\/google-chrome-stable %U/s//& --enable-features=TouchpadOverscrollHistoryNavigation/' "$FILE"
