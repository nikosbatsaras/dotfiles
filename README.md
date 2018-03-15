# Applications in use
```
- i3          The window manager
- bash        The shell
- vim         The text editor
- tmux        The terminal multiplexer
- mpv         The video player
- mpd         The music player daemon
- mpc         The command line mpd client
- ncmpcpp     The ncurses mpd client
- zathura     The pdf viewer
- sxiv        The image viewer
- mutt        The email client
```

# To setup NeoMutt:
The way neomutt is setup right now, is to read the passwords from encrypted
files in the filesystem. We use GnuPG to encrypt/decrypt.
First, create a key-pair (if you don't have one already):
```bash
gpg --gen-key
```
Then, create a file (for each of the accounts) to hold the password in plain
text (e.g acc1pw), encrypt it and make sure you delete it afterwards:
```bash
gpg -r "<recipient>" --encrypt ~/.mutt/acc1pw
rm ~/.mutt/acc1pw
```
