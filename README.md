# ZDM
Ziffo Display Manager (Ziff: Australian for beard)

## About
ZDM is a Bash script that runs after $USER console login.  The script creates a selectable list of window managers to choose from via /usr/share/xsessions like most GUI based display managers.  There are options to select a default window manager, avoid certain window managers, select a fortune-mod of your choice, and choose where you would like to save the ZDM log (X logging).

<p align="center">
  <img width="600" src="https://github.com/csmertx/ZDM/blob/master/zdm_screenshot.png?raw=true" alt="Preview of ZDM"/>
</p>

## Depends
- Fortune (fortune-mods)
- Cowsay

## Installing ZDM
- Read through the script and adjust as needed (date/time display, file/log locations, fortune-mod, binary locations, default window manager, etc)
- Backup current ~/.profile or append lines to ~/.profile as needed
- Copy to ~/.ZDM and ~/.profile
- Backup current ~/.xinitrc
- If no ~/.xinitrc then: echo "exec" > ~/.xinitrc
- Make ~/.ZDM and ~/.xinitrc executable
- sudo systemctl disable (current display manager)
- Logout & login to console

## Uninstalling ZDM
- Delete ~/.ZDM
- Restore backups of ~/.profile and ~/.xinitrc
- sudo systemctl enable (previous display manager)
