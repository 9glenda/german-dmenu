# Dmenu script ty type german special characters like `ä`
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
### manual
copy the main.sh into the directory you want to install it to.
## Dependencies 
Compatibility is archived through minimalism and as less dependencies as possible.
1. `dmenu`
2. `xdotool`
3. `awk` (no GNU stuff needed) tested with busybox awk, plan9port awk and gawk
4. `grep`
5. `sh` tested with Busybox ash
6. `make` (optional only for install process)
### Testing of different coreutils
The coreutils youre using need to have grep and awk.
To test with busybox:
```sh
./test.sh busybox busybox ash
```
```sh
./test.sh <awk to use> <grep to use> <shell to run script with>
```
# LICENSE
This project is licensed under the GPLv3.