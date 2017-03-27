export EDITOR='nvim'
export PATH=~/bin:~/.cargo/bin/:~/.rvm/bin/:~/.config/composer/vendor/bin/:~/.gem/ruby/2.4.0/bin/:$PATH
export DRI_PRIME=1
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
