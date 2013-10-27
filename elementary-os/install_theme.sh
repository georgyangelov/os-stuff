#!/bin/sh

if [ `whoami` != "root" ]; then
    echo "Please run this with sudo!"
    exit 1
fi

# Add the community PPA
apt-add-repository -y ppa:versable/elementary-update
apt-get update > /dev/null

# UI tweaks
echo "Installing UI tweaks..."
apt-get install -y elementary-tweaks elementary-thirdparty-icons wingpanel-slim indicator-synapse elementary-plank-themes > /dev/null

# Wallpapers
echo "Installing additional wallpapers..."
apt-get install -y elementary-wallpaper-collection

# Apps
echo "Installing a cool video player Audience..."
apt-get install -y audience

# Install the custom theme and activate it
echo "Installing a custom theme..."
cp -r themes /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme 'Fresh'

# Install the dock theme and activate it
cp -r dock-themes /usr/share/plank/themes
echo "To activate the cool dock theme go to system settings -> Desktop -> Dock and choose the Fresh-Glow theme"

# Add minimize button
echo "Adding minimize button..."
dconf write /org/pantheon/desktop/gala/appearance/button-layout '"close,minimize:maximize"'

# Set hot corners
echo "Set the bottom left and bottom right hot corners"
dconf write /org/pantheon/desktop/gala/behavior/hotcorner-bottomleft '"show-workspaces-view"'
dconf write /org/pantheon/desktop/gala/behavior/hotcorner-bottomright '"window-overview-all"'

echo "Activate the slim wingpanel from System settings -> Tweaks -> Wingpanel Slim"