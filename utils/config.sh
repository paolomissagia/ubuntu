# fractional scaling
gsettings set org.gnome.mutter experimental-features '["scale-monitor-framebuffer", "xwayland-native-scaling"]'

# show battery level
gsettings set org.gnome.desktop.interface show-battery-percentage true

# basic shortcuts
gsettings set org.gnome.desktop.wm.keybindings close "['<Ctrl>q']"
gsettings set org.gnome.mutter overlay-key 'Super_R'
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"

# workspaces
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 2
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# multitasking
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.mutter edge-tiling false

# dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# night light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# disable caps lock
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"

# compose key
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt']"

# fix alt tab
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Alt>Tab']"
