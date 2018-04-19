# Use both US and czech keyboard layout in Linux without switching
Constant keyboard layout switching hampers your productivity. It certainly hampered mine. With this keyboard layout you can forget about keyboard switching and let your muscle memory handle it.

How it works: The basic layout is `us` so that all symbols are available and all keyboard shortcuts work as intended. When you hold AltGr with your right thumb the layout changes to czech (qwerty variant; there is as little rearrangement as possible). With use, you will learn to press the right Alt unconsciously.

Linux xkb keyboard layout for programmers who need to write Czech. It is based on US layout with czech characters accessible with AltGr. Euro sign is available under AltGr + Shift.

To install:
- clone the repository: `git clone https://github.com/michalkahle/czech-programmer-keyboard-layout-xkb.git`
- cd into directory: `cd czech-programmer-keyboard-layout-xkb/`
- run `./install.sh`
- to test you can switch layout without X11 restart: `setxkbmap -layout cz -variant cz_programmer`
