# disable extensions
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-appindicators@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com

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

# disable auto brightness
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

# workspaces
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 2
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# night light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# disable caps lock
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"

# compose key
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt']"

# disable sounds
gsettings set org.gnome.desktop.sound event-sounds false
