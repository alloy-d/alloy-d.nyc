# alloy-d.nyc
Miscellaneous things related to my existence in the physical world.

## Boostrapping a macOS machine

### Prerequisites

- An SSH key added to GitHub, to clone this repo with read/write access.

### Making it go

This command will make sure Homebrew and Ansible are installed, then
apply the macOS playbook:

```sh
$ ./bootstrap-mac.sh
```

### Things this doesn't handle

#### Transferring SSH and GPG keys.

Depending on the use case, it probably makes the most sense to make
a new SSH key on the new machine.

For GPG, this works nicely:

```sh
$ gpg --export-secret-keys | ssh <NEW MACHINE> gpg --import
```

#### Setting my login shell

In enables fish as a login shell, but doesn't set it as mine.  You want:

```sh
$ chsh -s /usr/local/bin/fish
```

#### Setting up Alfred

More or less the basic setup.  License key is in 1Password.

Hide the hat.

#### Configuring Karabiner-Elements

Simple:
- Remap right option to right control.

Complex:
- Change caps lock to control if pressed with other keys, to escape if
	pressed alone.

Misc:
- Don't show icon in menu bar.

#### Manually installing apps

##### TextExpander 5

The Cask only has the latest subscription version, not the old
standalone apps.  You'll want to download the standalone version here:
https://textexpander.com/textexpander-standalone-apps/

#### Installing App Store apps

Here are the ones I typically want:

- Bear
- Keynote
- MindNode
- Pages
- Things
- Trello
