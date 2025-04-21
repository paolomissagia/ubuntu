wget -qO - https://repo.nordvpn.com/gpg/nordvpn_public.asc | sudo tee /etc/apt/trusted.gpg.d/nordvpn_public.asc > /dev/null

echo "deb https://repo.nordvpn.com/deb/nordvpn/debian stable main" | sudo tee /etc/apt/sources.list.d/nordvpn.list

sudo apt update -y

sudo apt install -y nordvpn
