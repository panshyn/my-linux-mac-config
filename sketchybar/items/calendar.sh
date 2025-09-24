#!/usr/bin/env bash

COLOR="$WHITE"

sketchybar --add item calendar right \
  --set calendar \
    icon.drawing=off \
    update_freq=15 \
    icon.color="$COLOR" \
    icon.padding_left=6 \
    icon.padding_right=6 \
    label.color="$COLOR" \
    label.padding_left=6 \
    label.padding_right=6 \
    script="$PLUGIN_DIR/calendar.sh"

sketchybar --add item calendar_sep right \
  --set calendar_sep \
    label="|" \
    label.color="$COLOR" \
    icon.drawing=off \
    label.padding_left=2 \
    label.padding_right=6 \
    background.drawing=off

