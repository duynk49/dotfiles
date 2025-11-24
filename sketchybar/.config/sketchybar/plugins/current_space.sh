#!/usr/bin/env zsh

ICON=󰅶
ICON_PADDING_LEFT=7
ICON_PADDING_RIGHT=7
SPACE_TEXT=$(aerospace list-workspaces --focused)

sketchybar --set $NAME \
    icon=$ICON \
    icon.padding_left=$ICON_PADDING_LEFT \
    icon.padding_right=$ICON_PADDING_RIGHT \
    label="$SPACE_TEXT"

