#!/bin/bash

option=$(printf "Hyprpaper\nSwayNc" | rofi -dmenu -i -p "Customization" -theme "$HOME/.config/rofi/dmenu/theme/theme.rasi")

case "option$" in
	"Hyprpaper") kitty --hold sh -c "$HOME/.config/hypr/hyprpaper.conf";;
	"SwayNc") kitty --hold sh -c "$HOME/.config/swaync/style.css";;
esac
