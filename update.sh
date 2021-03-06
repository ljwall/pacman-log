#! /usr/bin/sh

cd /root/pacman-log || exit 1

pacman -Qqe > packages.txt

if ! git diff-index --quiet HEAD packages.txt; then
	git add packages.txt
	git commit -m 'pacman hook auto-commit'
	git push -f
fi
