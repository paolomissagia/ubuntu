# system up
sudo apt update && sudo apt upgrade && sudo snap refresh

# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -dm 755 /etc/apt/keyrings

# dependencies
sudo apt install -y curl unzip build-essential ripgrep fd-find
