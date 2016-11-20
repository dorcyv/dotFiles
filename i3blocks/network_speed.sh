#!/bin/bash
function getStat() {
  ~/.config/i3blocks/speedtest.py --bytes --simple | grep $1 | tr -s ' ' ' ' | cut -d ':' -f2
}
echo "$(getStat Ping) $(getStat Download) $(getStat Upload)"
