#!/bin/sh

# Add the community PPA
sudo apt-add-repository -y ppa:versable/elementary-update > /dev/null
sudo apt-get update > /dev/null

# UI tweaks
echo "Installing UI tweaks..."
sudo apt-get install -y elementary-tweaks elementary-thirdparty-icons wingpanel-slim indicator-synapse elementary-plank-themes > /dev/null

# Wallpapers
echo "Installing additional wallpapers..."
sudo apt-get install -y elementary-wallpaper-collection >/dev/null

# Apps
echo "Installing a cool video player Audience..."
sudo apt-get install -y audience >/dev/null

# Install the custom theme and activate it
echo "Installing a custom theme..."
sudo cp -r themes/* /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme 'Fresh'

# Install the dock theme and activate it
sudo cp -r dock-themes/* /usr/share/plank/themes
echo "To activate the cool dock theme go to system settings -> Desktop -> Dock and choose the Fresh-Glow theme"

# Add minimize button
echo "Adding minimize button..."
dconf write /org/pantheon/desktop/gala/appearance/button-layout '"close,minimize:maximize"'

# Set hot corners
echo "Set the bottom left and bottom right hot corners"
dconf write /org/pantheon/desktop/gala/behavior/hotcorner-bottomleft '"show-workspaces-view"'
dconf write /org/pantheon/desktop/gala/behavior/hotcorner-bottomright '"window-overview-all"'

echo "Activate the slim wingpanel from System settings -> Tweaks -> Wingpanel Slim"

# Change terminal color scheme
echo "Making the terminal white..."
dconf write /org/pantheon/terminal/settings/audible-bell 0
dconf write /org/pantheon/terminal/settings/background '"#dedede"'
dconf write /org/pantheon/terminal/settings/cursor-color '"#525252"'
dconf write /org/pantheon/terminal/settings/follow-last-tab 0
dconf write /org/pantheon/terminal/settings/opacity 95
dconf write /org/pantheon/terminal/settings/palette '"#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#000014141A1A:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FFFFFBFBF0F0"'
dconf write /org/pantheon/terminal/settings/foreground '"#000000"'
