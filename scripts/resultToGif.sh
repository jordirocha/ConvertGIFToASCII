#!/bin/bash

DISTRO=$(cat /etc/issue.net | grep -i -E '[kde|ubuntu]')

case $DISTRO in
*KDE*)
  # add --fullscren after first parameter to open it on fullscren
  konsole --new-tab -p tabtitle="Result to GIF" -e "$SHELL" -c "sh ./scripts/convertToASCII.sh; rm -r ./scripts/images; sleep 1"
  ;;
*Ubuntu*)
  gnome-terminal -- /bin/sh -c 'sh ./scripts/convertToASCII.sh; rm -r ./scripts/images; sleep 1'
  ;;
*)
  echo "Not compatible :(."
  ;;
esac
