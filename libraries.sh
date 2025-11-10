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

# ruby
sudo apt install -y autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev rustc
