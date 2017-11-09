# czech-programmer-keyboard-layout-xkb
Linux xkb keyboard layout for programmers who need to write Czech. It is based on US layout with czech characters accessible with AltGr.

To install:
- replace the files /usr/share/X11/xkb/symbols/cz, /usr/share/X11/xkb/rules/base.lst, /usr/share/X11/xkb/rules/base.xml
- in /usr/sthare/X11/xkb/rules/ link evdev.lst to base.lst and evdev.xml to base.xml
- layout will be available in Settings / Text Entry
- to test you can switch layout without X11 restart: setxkbmap -layout cz -variant cz_programmer
