sudo apt update && sudo apt upgrade -y && sudo snap refresh

for script in ~/code/ubuntu/apps/*.sh; do source $script; done
for script in ~/code/ubuntu/config/*.sh; do source $script; done
for script in ~/code/ubuntu/utils/*.sh; do source $script; done
