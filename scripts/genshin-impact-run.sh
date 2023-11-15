#!/usr/bin/env bash

# Example https://gist.github.com/myyc/4b57f9a5637362d37961a10cd32b8f0b

PROTON_VERSION="GE-Proton8-22"
PROTON_APP="$HOME/.local/share/Steam/compatibilitytools.d/$PROTON_VERSION/proton"
GAME_LAUNCH="C:\\Genshin Impact\\launcher.exe"

# Show FPS/GPU/CPU
# export MANGOHUD=1
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="$HOME/Games/proton/genshin-impact"

steam-run $PROTON_APP run $GAME_LAUNCH
