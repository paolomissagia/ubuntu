# ubuntu

Scripts to set up a fresh Ubuntu 26.04 LTS machine, either a GNOME desktop or a headless server.

## Usage

```bash
git clone <this-repo> ~/Code/ubuntu
cd ~/Code/ubuntu
./install.sh            # regular: desktop machine
./install.sh headless   # headless: server, no desktop
```

When it finishes, log out and back in so the `docker` group takes effect.

## Modes

| Step                                                                 | regular | headless |
| -------------------------------------------------------------------- | :-----: | :------: |
| `libraries.sh`: system update, base dependencies, extrepo | ✓ | ✓ |
| `installs/terminal/*`: docker, eza, gh, lazygit, mise, neovim, starship, stow, tmux, wl-clipboard | ✓ | ✓ |
| `utils/docker.sh`, `utils/mise.sh`, `utils/tmux.sh`: docker group, node LTS, python 3 and ruby 3, tmux plugins | ✓ | ✓ |
| `installs/desktop/*`: anki, ghostty, gnome extension manager, google chrome, nordvpn, spotify, ulauncher, vlc | ✓ | |
| `icons/*`: Lock, Restart and Shutdown launchers | ✓ | |
| `utils/gnome.sh`: disables Ubuntu's GNOME extensions, settings and shortcuts | ✓ | |
| `utils/uninstall.sh`: removes the Firefox snap, `command-not-found` and Ptyxis (ghostty is the default terminal) | ✓ | |
| `utils/ssh-key.sh`: ed25519 key, only if `~/.ssh/id_ed25519` does not exist | ✓ | ✓ |

Each script also runs on its own, e.g. `bash installs/terminal/gh.sh`.

## Install sources

Packages come from the most sustainable source available, in this order:

1. **Ubuntu archive** (`apt install`): docker, eza, lazygit, neovim, starship, stow, tmux, wl-clipboard, vlc, gnome extension manager
2. **extrepo** (vendor repos with keys managed by Debian's extrepo catalog): mise, gh, google chrome, spotify
3. **PPA**: ghostty, ulauncher
4. **Vendor repo with a manually installed key** in `/etc/apt/keyrings`: nordvpn
5. **Release archive**: anki. It does not update itself, so bump `version` in `installs/desktop/anki.sh` to upgrade.

`libraries.sh` enables extrepo's `non-free` policy, which chrome and spotify need.

Do not use extrepo entries that target a specific Debian release (e.g. `docker-ce`, which points at trixie), or unofficial repackaging repos such as `griffo` and `latest-debs`.

## Notes

- `utils/ssh-key.sh` is interactive (passphrase prompt).
- `utils/gnome.sh` needs a running GNOME session.
- `stow` is used to link the dotfiles from `~/Code/dotfiles`, which is a separate repo.

## Adding a tool

Add a script in `installs/terminal/` (installed in both modes) or `installs/desktop/` (regular only). `install.sh` picks it up automatically.
