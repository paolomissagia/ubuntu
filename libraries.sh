# ppa
sudo add-apt-repository universe -y

# private repos
sudo install -dm 755 /etc/apt/keyrings

# dependencies
sudo apt install -y curl

# anki
sudo apt install -y libxcb-xinerama0 libxcb-cursor0 libnss3

# rbenv
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential \
		    libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
