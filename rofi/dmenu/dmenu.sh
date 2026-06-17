!#/bin/bash

option=$(printf " Configuration\n Customization\n Terminals\n Run" | rofi -dmenu -i -p "Options" -theme "$HOME/.config/rofi/dmenu/theme/theme.ra>

case "$option" in
        " Configuration") sh -c "$HOME/.config/rofi/dmenu/commands/configuration.sh";;
        " Customization") sh -c "$HOME/.config/rofi/dmenu/commands/customization.sh";;
        " Run") sh -c "rofi -show run -theme "$HOME/.config/rofi/dmenu/theme/theme.rasi" ";;
        " Terminals") sh -c "$HOME/.config/rofi/dmenu/commands/terminals.sh";;
esac
