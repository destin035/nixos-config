#!/usr/bin/env bash

# Example https://gist.github.com/myyc/4b57f9a5637362d37961a10cd32b8f0b

NAME="${1:-xxx}"
EXEC="${2:-xxx}"

PROTON_VERSION="GE-Proton8-22"
PROTON_APP="$HOME/.local/share/Steam/compatibilitytools.d/$PROTON_VERSION/proton"
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="$HOME/Games/proton/$NAME"
# Show FPS/GPU/CPU
export MANGOHUD=1
if [ ! -d "$STEAM_COMPAT_DATA_PATH" ]; then
	echo "$STEAM_COMPAT_DATA_PATH not exist"
	exit 1
fi
steam-run $PROTON_APP run $EXEC
