#!/usr/bin/env bash

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [ "$MUTED" != "false" ]; then
    VOLUME=0
fi

sketchybar -m \
    --set "$NAME" label="VOL ${VOLUME}%" \
    --set "$NAME" icon.drawing=off \
