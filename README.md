# alloy-d.nyc
Miscellaneous things related to my existence in the physical world.

## Boostrapping a macOS machine

### Prerequisites

- An SSH key.

### Making it go

```sh
$ ansible-playbook -K osx.yml
```

### Things this doesn't handle

#### Installing Dropbox

For Reasons™, Dropbox tends to be one of the first things I set up.

#### Transferring SSH and GPG keys.

#### Setting my login shell

In enables fish as a login shell, but doesn't set it as mine.  You want:

```sh
$ chsh -s /usr/local/bin/fish
```

#### Installing TextExpander 5

The Cask only has the latest subscription version, not the old
standalone apps.  You'll want to download the standalone version here:
https://textexpander.com/textexpander-standalone-apps/
