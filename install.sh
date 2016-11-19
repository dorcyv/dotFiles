#!/bin/bash
confirm () {
    read -r -p "Install $1 ?[Y/n] " response
    case $response in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

link() {
  ln -s $PWD/$1 ~/.$1
}

link_config() {
  ln -s $PWD/$1 ~/.config/$1
}

ask_and_link() {
  $(confirm $1) && link $1
}

ask_and_link_config() {
  $(confirm $1) && link_config $1
}

$(confirm "Oh my zsh") && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && rm ~/.zshrc

ask_and_link gitconfig
ask_and_link tmux.conf
ask_and_link zshrc
ask_and_link zshenv
ask_and_link_config i3
ask_and_link_config i3blocks
ask_and_link_config nvim
