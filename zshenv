export EDITOR='nvim'
export PATH=~/bin:$PATH

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
