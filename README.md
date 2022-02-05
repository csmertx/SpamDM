# ZDM
Ziffo Display Manager (Ziff: Australian for beard)

## About
ZDM is a console based display manager frontend for xinitrc.  The script creates a selectable list of up to five window managers currently installed.  The script also includes options to select a default window manager, avoid certain window managers, select a fortune-mod of your choice, and choose where you would like to save the ZDM log (default: ~/.config/ZDM/zdm.log).  

<p align="center">
  <img width="600" src="https://github.com/csmertx/ZDM/blob/master/zdm_screenshot.png?raw=true" alt="Preview of ZDM"/>
</p>

## Cross Platform notes

The script should work 'out of the box' with Arch Linux.  It might need some sed/awk tweaks for BSDs (I'd imagine the same with OSX).  And with Debian.. well, it might cause a few headaches.

## Dependencies
- Bash
- Fortune (fortune-mods)
- Cowsay
- Xorg

## Installing ZDM
- Read through the script and adjust as needed (date/time display, file/log locations, fortune-mod, app locations, default window manager, etc)
- Backup current ~/.profile or append lines to ~/.profile as needed
- Copy to ~/.ZDM and ~/.profile
- Backup current ~/.xinitrc
- If no ~/.xinitrc then: echo "exec" > ~/.xinitrc
- Make ~/.ZDM and ~/.xinitrc executable
```
sudo systemctl disable (current display manager)
```

## Uninstalling ZDM
```
rm -rf ~/.ZDM
```
```
rm -rf ~/.config/ZDM/*
```
- Restore backups of ~/.profile and ~/.xinitrc
```
sudo systemctl enable (previous display manager)
```
