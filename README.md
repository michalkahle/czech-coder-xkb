# Use both US and Czech keyboard layout in Linux without switching
Constant keyboard layout switching hampers your productivity. It certainly hampered mine. With this keyboard layout you can forget about keyboard switching and let your muscle memory handle it.

How it works: The basic layout is US so that all symbols are available and all keyboard shortcuts work as intended. When you hold AltGr with your right thumb the layout changes to Czech (qwerty variant; there is as little rearrangement as possible). With use, you will learn to press the right Alt unconsciously.

Linux xkb keyboard layout for coders who need to write Czech. It is based on US layout with Czech characters accessible with AltGr. Euro sign is available under AltGr + Shift + e.

To install:
- cd to the xkb directory: `cd /usr/share/X11/xkb/`
- patch some files (backups are created): `sudo curl https://raw.githubusercontent.com/michalkahle/czech-coder-xkb-keyboard-layout/master/cz-coder-xkb.patch | patch -bp1`
- to test you can switch layout without X11 restart: `setxkbmap -layout cz -variant coder`

If you run into troubles please open an issue so that we can fix it.
