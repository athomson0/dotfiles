#!/usr/bin/bash
#
# Build tabbed with my comfy keybinds
#
TABBED_REPO=git://git.suckless.org/tabbed

# Install dependencies
sudo apt install libx11-dev libxft-dev 

# Clone repo
rm -rf ~/tabbed_src
git clone $TABBED_REPO ~/tabbed_src

# Edit keybinds
cd ~/tabbed_src

sed -i 's/XK_Return, spawn/XK_t, spawn/' config.def.h               # New tab           ctrl+shift+t
sed -i -E 's/MODKEY,\W+XK_q/MODKEY|ShiftMask, XK_w/' config.def.h   # Close tab         ctrl+shift+w
sed -i 's/XK_l/XK_Right/' config.def.h                              # Next tab          ctrl+shift+right arrow
sed -i 's/XK_h/XK_Left/' config.def.h                               # Previous tab      ctrl+shift+left arrow

# Compile & move binary to somewhere in PATH
make && mv tabbed ~/.local/bin
