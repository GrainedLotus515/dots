#!/usr/bin/env bash

confDir="${confDir:-$HOME/.config}"
gtkIcon="${gtkIcon:-Tela-circle-dracula}"
iconsDir="${iconsDir:-$XDG_DATA_HOME/icons}"
cacheDir="${cacheDir:-$XDG_CACHE_HOME/hyde}"
WALLBASH_SCRIPTS="${WALLBASH_SCRIPTS:-$hydeConfDir/wallbash/scripts}"
hypr_border=10
dunstDir="${confDir}/dunst"
allIcons=$(find "${XDG_DATA_HOME:-$HOME/.local/share}/icons" -mindepth 1 -maxdepth 2 -name "icon-theme.cache" -print0 | xargs -0 -n1 dirname | xargs -n1 basename | paste -sd, -)
cat <<WARN >"${dunstDir}/dunstrc"
# WARNING: This file is auto-generated by '${WALLBASH_SCRIPTS}/dunst.sh'.
# DO NOT edit manually.
# For user configuration edit '${confDir}/dunst/dunst.conf'
# Remove '${confDir}/dunst/dunst.conf' if you want to generate a new dunst configuration file.

# HyDE specific section // To override the default configuration edit '${cacheDir}/wallbash/dunst.conf'
# ------------------------------------------------------------------------------
[global]
corner_radius = ${hypr_border}
icon_corner_radius = ${hypr_border}
dmenu = $(which rofi) -config "${confDir}/rofi/notification.rasi" -dmenu -p dunst:
icon_theme = "${gtkIcon},${allIcons}"

# [Type-1]
# appname = "t1"
# format = "<b>%s</b>"

# [Type-2]
# appname = "HyDE Notify"
# format = "<span size="250%">%s</span>\n%b"

[Type-1]
appname = "HyDE Alert"
format = "<b>%s</b>"

[Type-2]
appname = "HyDE Notify"
format = "<span size="250%">%s</span>\n%b"



[urgency_critical]
background = "#f5e0dc"
foreground = "#1e1e2e"
frame_color = "#f38ba8"
icon = "${iconsDir}/Wallbash-Icon/critical.svg"
timeout = 0

# ------------------------------------------------------------------------------

WARN

# For Clarity We added a warning and remove comments and empty lines for the auto-generated file
grep -v '^\s*#' "${dunstDir}/dunst.conf" | grep -v '^\s*$' | envsubst >>"${dunstDir}/dunstrc"

mkdir -p "${cacheDir}/wallbash"
envsubst <"${cacheDir}/wallbash/dunst.conf" >>"${dunstDir}/dunstrc"
killall dunst
dunst &
