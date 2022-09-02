# Dmenu script to type german special characters like `ä`
## Installation
### nixos
```sh
git clone https://github.com/9glenda/german-dmenu
cd german-dmenu
nix develop
nix build
```
the application is then in result/bin/german
### non nixos
```
git clone https://github.com/9glenda/german-dmenu
cd german-dmenu
make install
```
the application is then in /usr/bin/german
### manual install
copy the main.sh into the directory you want to install it to.
## Dependencies 
Compatibility is archived through minimalism and as less dependencies as possible.
1. `dmenu`
2. `xdotool`
3. `awk` (no GNU stuff needed) tested with busybox awk, plan9port awk and gawk
4. `grep`
5. `sh` tested with Busybox ash
6. `make` (optional only for install process)
## This script is feature complete
Because of this being feaure complete I'll most likely not change anything in the script
## LICENSE
This project is licensed under the GPLv3.
