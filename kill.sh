#!/usr/bin/env zsh

source /home/fw/.zshrc

echo "Launching Application, please wait!"

gnome-terminal --geometry=40x40  \
--tab --title="roskill" -e "zsh -c \"rosnode kill -a;exec zsh\"" \
--tab --title="kill terminal" -e "zsh -c \"killall -3 gnome-shell;exec zsh\""
