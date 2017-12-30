# Applications in use
```
- sway        The (i3-compatible) window manager
- bash        The shell
- vim         The text editor
- urxvt       The terminal
- tmux        The terminal multiplexer
- ranger      The file manager
- mpv         The video player
- mpd         The music player daemon
- mpc         The command line mpd client
- ncmpcpp     The ncurses mpd client
- qutebrowser The web browser
- zathura     The pdf viewer
- youtube-dl  The media downloader
- sxiv        The image viewer
- neomutt     The email client
- rtorrent    The BitTorrent client
```

# Installation
Run:
```bash
bash -c "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/arch/setup.sh -O -)"
```

# To setup NeoMutt:
The way neomutt is setup right now, is to read the passwords from encrypted
files in the filesystem. We use GnuPG to encrypt/decrypt.
First, create a key-pair:
```bash
gpg --gen-key
```
Then create a file to hold the password in plain text (e.g acc1pw),
encrypt it and make sure you delete it afterwards:
```bash
gpg -r "<recipient>" --encrypt ~/.mutt/acc1pw
rm ~/.mutt/acc1pw
```
