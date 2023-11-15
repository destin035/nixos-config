#!/usr/bin/env bash

# Example https://gist.github.com/myyc/4b57f9a5637362d37961a10cd32b8f0b

PROTON_VERSION="GE-Proton8-22"
PROTON_APP="$HOME/.local/share/Steam/compatibilitytools.d/$PROTON_VERSION/proton"
GAME_LAUNCH="C:\\SeasunGame\\SeasunGame.exe"
# GAME_LAUNCH="C:\\SeasunGame\\Game\\JX3\\bin\\zhcn_hd\\bin64\\JX3ClientX64.exe"
# GAME_LAUNCH="/home/destin/Downloads/SeasunGameInstaller_2.0.0.333-CG=JX3.exe"

# Show FPS/GPU/CPU
# export MANGOHUD=1
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="$HOME/Games/proton/jx3"
export LANG="zh_CN.UTF8" LC_ALL="zh_CN.UTF8"

steam-run $PROTON_APP run $GAME_LAUNCH
