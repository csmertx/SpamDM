# Rename to .zprofile for zsh profile

# basic window manager
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    tpid="$(pgrep -u $USER tmux 2> /dev/null)"
    if [[ -n $tpid ]]; then
        echo ""
    else
        exec /home/$USER/.ZDM
    fi
fi
