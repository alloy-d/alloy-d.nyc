#!/bin/sh
set -euxo pipefail

if ! which ansible-playbook; then
	echo "You're missing ansible. I'll install it."
	sudo pacman -S ansible
fi

ansible-playbook -v -K arch.yml
