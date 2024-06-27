sudo apt update && sudo apt upgrade -y && sudo snap refresh

sudo apt install -y \
	 git curl ripgrep libssl-dev libreadline-dev zlib1g-dev \
	 autoconf bison build-essential libyaml-dev libreadline-dev \
	 libncurses5-dev libffi-dev libgdbm-dev

for script in ~/code/ubuntu/apps/*.sh; do source $script; done
for script in ~/code/ubuntu/config/*.sh; do source $script; done
for script in ~/code/ubuntu/utils/*.sh; do source $script; done
