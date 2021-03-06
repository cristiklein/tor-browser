#!/bin/sh

docker run \
    -it \
    --rm \
    --name tor-browser \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e DISPLAY=unix$DISPLAY \
    --cap-drop=ALL \
    --cpuset-cpus=0 \
    cklein/tor-browser
