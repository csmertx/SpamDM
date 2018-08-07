export PATH="$HOME/.cargo/bin:$PATH"

# basic window manager
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec /home/chris/.ZDM
fi
