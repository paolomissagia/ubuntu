sudo apt update -y && sudo apt upgrade -y

sudo snap refresh -y

sudo apt install -y git tmux curl ca-certificates stow gpg build-essential

for install in ~/code/ubuntu/installs/**/*.sh; do source $install; done

for config in ~/code/ubuntu/installs/*.sh; do source $config; done

for util in ~/code/ubuntu/utils/*.sh; do source $util; done

for icon in ~/code/ubuntu/icons/*.sh; do source $icon; done
