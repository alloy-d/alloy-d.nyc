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
