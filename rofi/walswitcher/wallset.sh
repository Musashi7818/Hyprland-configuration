#!/bin/bash

WALL_DIR="$HOME/Wallpapers"

CWD="$(pwd)"

cd "$WALL_DIR" || exit

IFS=$'\n'

SELECTED_WALL=$(
    for a in *.jpg *.png; do
        printf '%s\0icon\x1f%s/%s\n' "$a" "$WALL_DIR" "$a"
    done | rofi -dmenu -theme "$HOME/.config/rofi/walswitcher/theme/theme.rasi" -show-icons
)

if [ -n "$SELECTED_WALL" ]; then
        ~/.config/rofi/walswitcher/wallset-backend.sh "$SELECTED_WALL"
fi

cd "$CWD" || exit
