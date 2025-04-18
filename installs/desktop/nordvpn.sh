wget -qO - https://repo.nordvpn.com/gpg/nordvpn_public.asc | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null

echo "deb https://repo.nordvpn.com/deb/nordvpn/debian stable main" | sudo tee /etc/apt/sources.list.d/nordvpn.list

sudo apt update -y

sudo apt install -y nordvpn
