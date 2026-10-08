#!/usr/bin/env bash

ssh-keygen -t ed25519 -C "hello@paolomissagia.com"

# headless machines usually have no agent running
if [ -n "${SSH_AUTH_SOCK:-}" ]; then ssh-add ~/.ssh/id_ed25519; fi
