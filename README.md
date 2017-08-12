# dotfiles

personal dotfiles

# Installation

## Linux

### Applications

All programs (e.g. vim, tmux, R, etc) must be installed separately.

If you do not have permissions to install to a global location (e.g.
`/usr/local/bin/`) then you can typically install standalone binaries to
`$HOME/bin`.

For example, to install git-duet:

1. Download the tarball:

```sh
cd $HOME/Downloads
wget https://github.com/git-duet/git-duet/releases/download/0.5.2/linux_amd64.tar.gz
```

1. Untar it into a directory that is on the `$PATH` e.g. `$HOME/bin`:

```sh
cd $HOME/bin
tar -xvf $HOME/Downloads/linux_amd64.tar.gz
```

### Configuration

The following configurations are known to work on linux. Others (e.g. `R`) may
work, but are untested.

```sh
./bash-it/install
./git/install
./ssh/install
./tmux/install
./vim/install
```

## OSX

Before anything else is run, XCode must be installed from the app store.
Open XCode and accept the license.

Once XCode is installed and the license is accepted, run the following:

```sh
git clone https://github.com/hallez/dotfiles ~/dotfiles
cd ~/dotfiles
./install
```

# Usage

## Yubikey, gpg/ssh and yubishell

Running `yubishell` and inserting the yubikey should generally just work.

If for some reason it does not, the following command will unwedge everything:

```sh
keychain --stop all --agents ssh,gpg; keychain --stop all --agents ssh,gpg
```

After this, running `yubishell` should work again.
