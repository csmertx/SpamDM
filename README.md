# SpamDM
Very Display Manger, much TMUX, very fix the thing.  You know, that one thing.

## About
SpamDM is a console based display manager frontend for xinitrc.  The script creates a selectable list of up to five window managers currently installed.  The script also includes options to select a default window manager, avoid certain window managers, select a fortune-mod of your choice, and choose where you would like to save the spamdm log (default: ~/.config/spamdm/zdm.log).  

<p align="center">
  <img width="600" src="https://github.com/xtrafrood/spamdm/blob/master/spamdm_screenshot.png?raw=true" alt="Preview of spamdm"/>
</p>

## Cross Platform notes

The script should work with Arch Linux.  It might need some sed/awk tweaks for BSDs (I'd imagine the same with OSX).  And with Debian.. well, it might cause a few headaches.

## Dependencies
- Bash
- Fortune (fortune-mods)
- Cowsay
- Xorg
- Patience

## Installing spamdm
- Browse the script and adjust as options as needed (date/time display, file/log locations, fortune-mod, app locations, default window manager, etc)
- Backup current ~/.profile or append lines to ~/.profile as needed
- Copy to ~/.spamdm and ~/.profile
- Backup current ~/.xinitrc
- If no ~/.xinitrc then: echo "exec" > ~/.xinitrc
- Make ~/.spamdm and ~/.xinitrc executable
```
sudo systemctl disable (current display manager)
```

## Uninstalling spamdm
```
rm -rf ~/.spamdm
```
```
rm -rf ~/.config/spamdm/*
```
- Restore backups of ~/.profile and ~/.xinitrc
```
sudo systemctl enable (previous display manager)
```
