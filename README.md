# pacman log

Contents of `pacman -Qe | awk '{ print $1 }'` in case I'm ever building a new box.

## Setup

`update.sh` updates `packages.txt` and pushes the changes.

Put `update-pacman-list.hook` in `/usr/share/libalpm/hooks/` to update when pacman runs.
