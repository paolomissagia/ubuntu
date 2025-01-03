# for ppa
sudo add-apt-repository universe -y

# for private repos
sudo install -dm 755 /etc/apt/keyrings

# dependencies
sudo apt install -y curl

# for anki
sudo apt install -y libxcb-xinerama0 libxcb-cursor0 libnss3
