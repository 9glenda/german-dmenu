#!/bin/sh
set -euo pipefail
options="\nA     Ä\nO       Ö\nU       Ü\ns       ß\na       ä\no       ö\nu       ü"
xdotool type $(echo -e $options | grep "$(echo -e $options | awk '{ print $1 }' | dmenu)" | awk 'NR==1 { print $2 }')
