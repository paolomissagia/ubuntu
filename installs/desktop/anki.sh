version=26.05

cd /tmp

wget https://github.com/ankitects/anki/releases/download/$version/anki-$version-linux-x86_64.tar.zst

tar xaf anki-$version-linux-x86_64.tar.zst

cd anki-linux

sudo ./install.sh

cd -
