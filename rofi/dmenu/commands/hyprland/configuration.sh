!/bin/bash

option=$(printf "Hyprland\nMonitors\nShortcuts\nVariables\nKeyboard\nAutostart\nLook and feel" | rofi -dmenu -i -p "Hyprland" -theme "$HOME/.config/rofi/dmenu/theme/theme.rasi")

case "$option" in
        "Hyprland") kitty --hold sh -c "$HOME/.config/hypr/hyprland.conf";;
        "Monitors") kitty --hold sh -c "$HOME/.config/hypr/modules/monitors.conf";;
        "Shortcuts") kitty --hold sh -c "$HOME/.config/hypr/motules/variables.conr";;
        "Variables") kitty --hold sh -c "$HOME/.config/hypr/modules/variables.conf";;
        "Keyboard") kitty --hold sh -c "$HOME/.config/hypr/modules/keyboard.conf";;
        "Autostart") kitty --hold sh -c "$HOME/.config/hypr/modules/autostart.conf";;
        "Look and feel") kitty --hold sh -c "$HOME/.config/hypr/modules/look_and_feel.conf"
esac
