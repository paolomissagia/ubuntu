# turn off extensions
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-appindicators@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com

# remove terminal icon
sudo rm -rf /usr/share/applications/org.gnome.Terminal.desktop

# fractional scaling
gsettings set org.gnome.mutter experimental-features '["scale-monitor-framebuffer", "xwayland-native-scaling"]'

# show battery level
gsettings set org.gnome.desktop.interface show-battery-percentage true

# basic shortcuts
gsettings set org.gnome.desktop.wm.keybindings close "['<Ctrl>q']"
gsettings set org.gnome.mutter overlay-key 'Super_R'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"

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

# disable auto brightness
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

# ulauncher
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "@as []"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'ulauncher-toggle'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'ulauncher-toggle'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>space'
