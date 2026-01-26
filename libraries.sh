# system up
sudo apt update && sudo apt upgrade && sudo snap refresh

# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -m 0755 -d /etc/apt/keyrings

# dependencies
sudo apt install -y curl build-essential

# neovim
sudo apt install -y ripgrep

# anki
sudo apt install -y libxcb-xinerama0 libxcb-cursor0 libnss3
