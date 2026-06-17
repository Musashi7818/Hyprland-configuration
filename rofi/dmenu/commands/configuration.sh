!/bin/bash

option=$(printf "Hyprland\nSayNc\nDmenu\nSearch Bar" | rofi -dmenu -i -p "Configuration" -theme "$HOME/.config/rofi/dmenu/theme/theme.rasi")

case "option$" in
        "Hyprland") kitty --hold sh -c "$HOME/.config/rofi/dmenu/commands/hyprland/configuration.sh";;
        "SwayNc") kitty --hold sh -c "$HOME/.config/swaync/conf.json";;
        "Dmenu") kitty --hold sh -c "$HOME/.config/rofi/dmenu/dmenu.sh";;
        "Search Bar") kitty --hold sh -c "$HOME/.config/rofi/search/searchbar.sh";;
esac
