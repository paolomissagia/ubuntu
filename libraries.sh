# system up
sudo apt update && sudo apt upgrade -y && sudo snap refresh

# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -m 0755 -d /etc/apt/keyrings

# extrepo, non-free policy needed for chrome and spotify
sudo apt install -y extrepo
grep -qx -- '- non-free' /etc/extrepo/config.yaml || sudo sed -i '/^enabled_policies:/a - non-free' /etc/extrepo/config.yaml

# dependencies
sudo apt install -y curl build-essential util-linux-extra

# neovim
sudo apt install -y ripgrep
