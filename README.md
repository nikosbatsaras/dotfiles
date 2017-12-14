# Applications in use
```
- i3          The window manager
- zsh         The shell
- vim         The text editor
- urxvt       The terminal
- tmux        The terminal multiplexer
- ranger      The file manager
- mpd         The music player daemon
- mpc         The command line mpd client
- ncmpcpp     The ncurses mpd client
- qutebrowser The web browser
- zathura     The pdf viewer
- youtube-dl  The media downloader
- sxiv        The image viewer
- mutt        The email client
```

# Installation
Run:
```bash
bash -c "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/setup.sh -O -)"
```
and reboot selecting i3 at login.


# Screenshot
![2017-12-10-024210_1366x768_scrot](https://user-images.githubusercontent.com/23704715/33800931-e8cc1552-dd53-11e7-82b3-5acaac9e6f37.png)


# To setup Mutt (NeoMutt):
The way mutt is setup right now, is to read the passwords from encrypted files
in the filesystem. We use GnuPG to encrypt/decrypt.
First, create a key-pair:
```bash
gpg --gen-key
```
Then create a file to hold the password in plain text (e.g acc1pw),
encrypt it and make sure you delete it afterwards:
```bash
gpg --encrypt ~/.mutt/acc1pw
rm ~/.mutt/acc1pw
```
