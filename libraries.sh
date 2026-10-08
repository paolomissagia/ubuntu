#!/usr/bin/env bash

sudo apt update

sudo apt upgrade -y

sudo snap refresh

# non-free policy is needed for chrome and spotify
sudo apt install -y extrepo

grep -qx -- '- non-free' /etc/extrepo/config.yaml || sudo sed -i '/^enabled_policies:/a - non-free' /etc/extrepo/config.yaml

sudo apt install -y curl build-essential util-linux-extra

# used by neovim
sudo apt install -y ripgrep

# headers for ruby gems with native extensions
sudo apt install -y libssl-dev libyaml-dev zlib1g-dev libffi-dev
