#!/bin/sh
set -euxo pipefail

if ! which brew; then
	echo "Ain't got no Homebrew. Will install it now."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! which ansible-playbook; then
	echo "You're missing ansible. I'll install it."
	brew install ansible
fi

ansible-playbook -K osx.yml
