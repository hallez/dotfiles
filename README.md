# dotfiles

personal dotfiles

# Usage

Before anything else is run, XCode must be installed from the app store.
Open XCode and accept the license.

Once XCode is installed and the license is accepted, run the following:

```sh
git clone https://github.com/hallez/dotfiles ~/dotfiles
cd ~/dotfiles
./install
```

## Yubikey, gpg/ssh and yubishell

Running `yubishell` and inserting the yubikey should generally just work.

If for some reason it does not, the following command will unwedge everything:

```sh
keychain --stop all --agents ssh,gpg; keychain --stop all --agents ssh,gpg
```

After this, running `yubishell` should work again.
