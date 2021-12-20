#!/usr/bin/bash
gsettings set org.gnome.gnome-screenshot auto-save-directory "file:///home/aidan/Screenshots"
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip "['<Ctrl><Shift>4']"
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip "['<Ctrl><Shift>3']"