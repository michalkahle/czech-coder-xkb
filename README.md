# Use both US and czech keyboard layout in Linux without switching
Constant keyboard layout switching hampers your productivity. It certainly hampered mine. With this keyboard layout you can forget about keyboard switching and let your muscle memory handle it.

How it works: The basic layout is `us` so that all symbols are available and all keyboard shortcuts work as intended. When you press AltGr with your right thumb the layout changes to czech (qwerty variant; there is as little rearrangement as possible). With use, you will learn to press the right Alt unconsciously.

Linux xkb keyboard layout for programmers who need to write Czech. It is based on US layout with czech characters accessible with AltGr.

To install:
- replace the files /usr/share/X11/xkb/symbols/cz, /usr/share/X11/xkb/rules/base.lst, /usr/share/X11/xkb/rules/base.xml
- in /usr/share/X11/xkb/rules/ link evdev.lst to base.lst and evdev.xml to base.xml
- layout will be available in Settings / Text Entry
- to test you can switch layout without X11 restart: `setxkbmap -layout cz -variant cz_programmer`
