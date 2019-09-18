# Use both US and Czech keyboard layout in Linux without switching
Constant keyboard layout switching hampers your productivity. It certainly hampered mine. With this keyboard layout you can forget about keyboard switching and let your muscle memory handle it.

Czech coder layout is inspired by the Czech Programmers keyboard layout in Windows with **one significant difference:** Czech Programmers layout lets you type accented characters by pressing AltGr but regular characters are not available in this mode. You have to release AltGr to type them. This means pressing and releasing AltGr several times during typing a single word! That is unacceptable for touch typists. Czech coder layout solves this and lets you type whole sentences and paragraphs in Czech with pressed AltGr.

How it works: The basic layout is US so that all symbols are available and all keyboard shortcuts work as intended. When you hold AltGr with your right thumb the layout changes to Czech (qwerty variant; there is as little rearrangement as possible). With use, you will learn to press the right Alt unconsciously.

Upper case of accented letters are available with AltGr + Shift combination. Euro sign is available under AltGr + Shift + e.

**To install** on Debian/Ubuntu:
- Find out which version of `xkb-data` package is installed: `apt list xkb-data`
- cd to the xkb directory: `cd /usr/share/X11/xkb/`
- patch some files (backups are created):
- for version 2.19: `sudo curl https://raw.githubusercontent.com/michalkahle/czech-coder-xkb/master/xkeyboard-config_2.19.patch | sudo patch -bp1`
- for version 2.23: `sudo curl https://raw.githubusercontent.com/michalkahle/czech-coder-xkb/master/xkeyboard-config_2.23.patch | sudo patch -bp1`
- to test you can switch layout without X11 restart: `setxkbmap -layout cz -variant coder`

To install on other distros: Please help me to test and improve the instructions.

Three ways to uninstall: 
- reinstall xkb-data package: `sudo apt install --reinstall xkb-data`
- or run the same line as was used for installing but add `-R` (reverse) switch to `patch` command
- or manually replace patched files with the original ones.

If you run into troubles please open an issue so that we can fix it.

czech-coder-xkb was proposed for [merging upstream into the freedesktop.org xkeyboard-config repository](https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config/merge_requests/25).

Very similar layout is [available for macOS](http://blog.destil.cz/2012/10/ceska-programatorska-klavesnice-pro-mac.html).

# Používejte na Linuxu americké i české rozložení kláves bez přepínání
Neustálé přepínání rozložení klávesnice sníží vaši produktivitu. Mně strašně lezlo na nervy. S tímto rozložením můžete přestat myslet na přepínání klávesnice a nechat to vašemu podvědomí.

Rozložení Czech coder bylo inspirováno Českým programátorským rozložením pro Windows **s jedním zásadním rozdílem:** České programátorské rozložení umožňuje psát znaky s diakritikou po stisku AltGr, ale znaky bez diakritiky nejsou v tomto módu dostupné. Musíte pustit AltGr, abyste je mohli napsat. To znamená nutnost stisknout a uvolnit AltGr i několikrát při psaní jednoho slova! To je při psaní všemi deseti zcela nepoužitelné. Rozložení Czech coder tohle řeší a umožní vám psát celé věty a odstavce česky se stisknutým AltGr.

Jak to funguje: Základní rozložení je US, takže jsou dostupné všechny symboly a klávesové zkratky fungují bez problémů. Při stisku AltGr pravým palcem se rozložení změní na české (querty, aby byly změny minimální). S používáním se brzy naučíte mačkat AltGr při psaní češtiny podvědomě.

Velká písmena s diakritikou jsou dostupná s AltGr + Shift. Znak euro je dostupný pod AltGr + Shift + e.

Návod na instalaci výše.
