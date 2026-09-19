#!/bin/bash
# Clip the last 15 seconds like how medal does it BUT for linux and store it locally


CLIP_DIR="$HOME/Videos/Clips"

mkdir -p "$CLIP_DIR"

if pgrep -f "^gpu-screen-recorder " >/dev/null; then
    echo "GPU Screen Recorder is already running."
    exit 0
fi

exec gpu-screen-recorder \
    -w edP-1 \
    -r 15 \
    -f 30 \
    -encoder gpu \
    -q medium \
    -tune performance \
    -a default_output \
    -c mp4 \
    -o "$HOME/Videos/Clips"
