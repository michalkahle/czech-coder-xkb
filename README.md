# Use both US and Czech keyboard layout in Linux without switching
Constant keyboard layout switching hampers your productivity. It certainly hampered mine. With this keyboard layout you can forget about keyboard switching and let your muscle memory handle it.

Czech coder layout is inspired by the Czech Programmers keyboard layout in Windows with **one significant difference:** Czech coder lets you type fluently in Czech with pressed AltGr without the need to release it! When you do release the AltGr, you are back to US layout which is optimal for coding.

### How it works 
The basic layout is US so that all symbols are available and all keyboard shortcuts work as intended. When you hold AltGr with your right thumb the layout changes to Czech (qwerty variant; there is as little rearrangement as possible). With use, you will learn to press the right Alt unconsciously.

Upper case of accented letters are available with AltGr + Shift combination. Euro sign is available under AltGr + Shift + e.

### Disadvantages and compromises
- Location of right thumb on AltGr is in an awkward position under your palm on most keyboards and it makes longer typing in Czech inconvenient. I certainly wouldn't want to write a novel this way. But it is ok for short snippets of text. 
- Only left thumb is left to type spaces in Czech.
- There is a small inconsistency because of the euro sign where you have to release AltGr to type upper case "E" when writing Czech.

### Installation
Unfortunately, the following instructions **do not work with Wayland**. There are only instructions for SwayWM for now. Please help me to make it work there. I'll update these instructions when I learn the proper way how to switch keyboard layouts on Wayland.

On Ubuntu 20.4 and later or its derivatives the 'coder' variant is already present. 
- You can switch to it temporarily by `setxkbmap -layout cz -variant coder`.
- 'coder' variant is registered in [the 'extras' section as an 'exotic' layout](https://www.freedesktop.org/wiki/Software/XKeyboardConfig/Rules/#layoutsvariants). Therefore, you won't see it by default in Gnome Settings Input Sources. You will have to set `gsettings set org.gnome.desktop.input-sources show-all-sources true` and reopen your settings app to see it. Set it as the only input source and restart your Gnome session.
- Alternatively, you can set czech-coder as your only Gnome imput source on the command line: `gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'cz+coder')]"`

In older versions of Debian/Ubuntu/Mint:
- Find out which version of `xkb-data` package is installed: `apt list xkb-data`
- cd to the xkb directory: `cd /usr/share/X11/xkb/`
- patch some files (backups are created):
- for version 2.19 - 2.22: `sudo curl https://raw.githubusercontent.com/michalkahle/czech-coder-xkb/master/xkeyboard-config_2.19.patch | sudo patch -bp1`
- for version 2.23 - 2.27: `sudo curl https://raw.githubusercontent.com/michalkahle/czech-coder-xkb/master/xkeyboard-config_2.23.patch | sudo patch -bp1`
- for version 2.28 and later: the 'coder' variant is already present, see above.
- to test you can switch layout without X11 restart: `setxkbmap -layout cz -variant coder`
- to uninstall: `sudo apt install --reinstall xkb-data`.

Other distros:
Look into the patches what needs to be done. When you make it work, please submit PR with instructions.

If you run into troubles please open an issue so that we can fix it.

Very similar layout is [available for macOS](http://blog.destil.cz/2012/10/ceska-programatorska-klavesnice-pro-mac.html).

#### Wayland

In wayland, input and output configuration is the job of the compositor. Thus, setting a keyboard layout varies. 

For SwayWM, add this to your config:
```
input * {
    xkb_layout "cz"
    xkb_variant "coder"
}
```

Or if you want to use multiple layouts in the same time _(and switch them by CapsLock)_:
```
input "type:keyboard" {
    xkb_layout "cz(coder),us"
    xkb_options "grp:caps_toggle,grp_led:caps"
}
```


If you know how to set up keyboard layout for other WMs/DEs, please submit a PR.

# Používejte na Linuxu americké i české rozložení kláves bez přepínání
Neustálé přepínání rozložení klávesnice sníží vaši produktivitu. Mně strašně lezlo na nervy. S tímto rozložením můžete přestat myslet na přepínání klávesnice a nechat to vašemu podvědomí.

Rozložení Czech coder bylo inspirováno Českým programátorským rozložením pro Windows **s jedním zásadním rozdílem:** České programátorské rozložení umožňuje psát znaky s diakritikou po stisku AltGr, ale znaky bez diakritiky nejsou v tomto módu dostupné. Musíte pustit AltGr, abyste je mohli napsat. To znamená nutnost stisknout a uvolnit AltGr i několikrát při psaní jednoho slova! To je při psaní všemi deseti zcela nepoužitelné. Rozložení Czech coder tohle řeší a umožní vám psát celé věty a odstavce česky se stisknutým AltGr.

### Jak to funguje 
Základní rozložení je US, takže jsou dostupné všechny symboly a klávesové zkratky fungují bez problémů. Při stisku AltGr pravým palcem se rozložení změní na české (querty, aby byly změny minimální). S používáním se brzy naučíte mačkat AltGr při psaní češtiny podvědomě.

Velká písmena s diakritikou jsou dostupná s AltGr + Shift. Znak euro je dostupný pod AltGr + Shift + e.

Návod na instalaci výše.
