#!/usr/bin/env bash

COLOR="$WHITE"

sketchybar --add item sound right \
  --set sound \
    icon.color="$COLOR" \
    icon.padding_left=6 \
    icon.padding_right=6 \
    label.color="$COLOR" \
    label.padding_left=6 \
    label.padding_right=6 \
    script="$PLUGIN_DIR/sound.sh" \
  --subscribe sound volume_change

sketchybar --add item sound_sep right \
  --set sound_sep \
    label="|" \
    label.color="$COLOR" \
    icon.drawing=off \
    label.padding_left=2 \
    label.padding_right=6 \
    background.drawing=off
