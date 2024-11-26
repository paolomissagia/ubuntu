sudo apt update -y && sudo apt upgrade -y && sudo snap refresh

sudo apt install -y git curl ca-certificates stow gpg ripgrep

sudo apt install -y \
    autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev \
    zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

sudo install -m 0755 -d /etc/apt/keyrings

for install in ~/code/ubuntu/installs/**/*.sh; do source $install; done

for config in ~/code/ubuntu/config/*.sh; do source $config; done

for util in ~/code/ubuntu/utils/*.sh; do source $util; done

for icon in ~/code/ubuntu/icons/*.sh; do source $icon; done
