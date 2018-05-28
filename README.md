# Screenshot
![2018-04-29-1525006603_screenshot_1366x768](https://user-images.githubusercontent.com/23704715/39407129-0ab568dc-4bca-11e8-8719-a6df1730c429.jpg)

# Applications in use
```
- i3          The window manager
- bash        The shell
- rxvt        The terminal emulator
- vim         The text editor
- tmux        The terminal multiplexer
- ranger      The file manager
- mpv         The video player
- mpd         The music player daemon
- mpc         The command line mpd client
- ncmpcpp     The ncurses mpd client
- zathura     The pdf viewer
- sxiv        The image viewer
- mutt        The email client
- rtv         The reddit client
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
