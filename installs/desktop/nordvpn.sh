#!/usr/bin/env bash

sudo wget -qO /etc/apt/keyrings/nordvpn.asc https://repo.nordvpn.com/gpg/nordvpn_public.asc

sudo chmod a+r /etc/apt/keyrings/nordvpn.asc

sudo tee /etc/apt/sources.list.d/nordvpn.sources <<EOF
Types: deb
URIs: https://repo.nordvpn.com/deb/nordvpn/debian
Suites: stable
Components: main
Signed-By: /etc/apt/keyrings/nordvpn.asc
EOF

sudo apt update

sudo apt install -y nordvpn-gui
