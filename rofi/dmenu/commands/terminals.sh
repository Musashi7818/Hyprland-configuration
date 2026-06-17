#!/bin/bash

option=$(printf "Zsh\nBash\nSSH" | rofi -dmenu -i -p "Termials" -theme "$HOME/.config/rofi/dmenu/theme/theme.rasi")

case "$option" in
	"Zsh") kitty --hold zsh;;
	"Bash") kitty --hold bash;;
esac
