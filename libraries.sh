# system up
sudo apt update && sudo apt upgrade && sudo snap refresh

# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -m 0755 -d /etc/apt/keyrings

# dependencies
sudo apt install -y curl build-essential

# neovim
sudo apt install -y ripgrep fd-find unzip

# docker
sudo apt install -y ca-certificates

# nordvpn
sudo apt install -y apt-transport-https