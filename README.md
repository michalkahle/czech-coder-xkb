# czech-programmer-keyboard-layout-xkb
Linux xkb keyboard layout for programmers who need to write in Czech occasionally. It is basically a US querty layout where czech characters are accessible by their usual keys upon pressing AltGr.

To install:
- replace the file /usr/share/X11/xkb/cz with provided cz file (contains the programmer layout)
- to force recompiling of layouts: sudo rm /var/lib/xkb/*.xkm
- to switch layout without X11 restart: setxkbmap -layout cz -variant programmer
- to reconfigure package: sudo dpkg-reconfigure xkb-data
