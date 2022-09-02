#!/bin/sh
set -euo pipefail
sed -i "/awk/$1 awk" main.sh
sed -i "/grep/$2 grep" main.sh
$3 main.sh
sed -i "/$1 awk/awk" main.sh
sed -i "/$2 grep/grep" main.sh
