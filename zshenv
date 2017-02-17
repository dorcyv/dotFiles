export EDITOR='nvim'
export PATH=~/bin:~/.cargo/bin/:~/.rvm/bin/:~/.config/composer/vendor/bin/:$PATH
export DRI_PRIME=1

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
