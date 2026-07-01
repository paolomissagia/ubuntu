# system up
sudo apt update && sudo apt upgrade && sudo snap refresh

# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -m 0755 -d /etc/apt/keyrings

# extrepo
sudo apt install -y extrepo

# dependencies
sudo apt install -y curl build-essential util-linux-extra

# neovim
sudo apt install -y ripgrep
