#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

usage() {
  echo "usage: ./install.sh [regular|headless]"
  echo "  regular   full desktop setup (default)"
  echo "  headless  terminal tools only, no desktop apps or GNOME settings"
}

run() {
  echo "==> $1"
  bash "$1"
}

base() {
  run libraries.sh

  for script in installs/terminal/*.sh; do run "$script"; done

  run utils/docker.sh
  run utils/mise.sh
  run utils/tmux.sh
}

desktop() {
  for script in installs/desktop/*.sh; do run "$script"; done

  mkdir -p ~/.local/share/applications
  for script in icons/*.sh; do run "$script"; done

  run utils/gnome.sh
  run utils/uninstall.sh
}

ssh_key() {
  # interactive, so only when no key exists yet
  [ -f ~/.ssh/id_ed25519 ] || run utils/ssh-key.sh
}

case "${1:-regular}" in
  regular) base; desktop; ssh_key ;;
  headless) base; ssh_key ;;
  -h | --help) usage; exit 0 ;;
  *) usage; exit 1 ;;
esac

echo "==> done. log out and back in to apply the docker group"
