sudo apt update && sudo apt upgrade -y && sudo snap refresh

source ./libraries.sh

for script in ~/code/ubuntu/install/*.sh; do source $script; done

source ./shell.sh

for script in ~/code/ubuntu/utils/*.sh; do source $script; done
