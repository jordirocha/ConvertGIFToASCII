#!/bin/bash

# add --fullscren after first parameter to open it on fullscren
konsole --new-tab -p tabtitle="Result to GIF" -e $SHELL -c "sh ./scripts/convertToASCII.sh; rm -r ./scripts/images; sleep 1"