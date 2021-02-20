# mate-command-applet-icon                                                                                                                                           
Mate's command-applet for mate-panel with added functionality to choose a custom icon. 

![screenshot](/docs/command-applet-icon.png)

## Files
`command.c` : full source code file with added functionality

`command.diff` : diff file for patching the original source code from Mate's github repository

`command-preferences.ui` : xml file for the command-applet preferences dialog box with added file-chooser

`org.mate.panel.applet.command.gschema.xml.in` : glib schema file for the applet with added key info for icon chooser

## Configure
**clone mate-applets repository** :
```bash 
git clone https://github.com/mate-desktop/mate-applets.git
```

**clone this repository** :
```bash
 git clone https://github.com/feloniousBonk/mate-command-applet-icon.git
```
## 
**enter this repository's directory** :

- copy `command-preferences.ui` to **`mate-applets/command/data`** \*(confirm overwrite Yes)\*

- copy `org.mate.panel.applet.command.gschema.xml.in` to **`mate-applets/command/data`** \*(confirm overwrite Yes)\*

- copy `command.diff` to **`mate-applets/command/src`**
## 

**go to `mate-applets` subdirectory `mate-applets/command/src`** 

- patch the file `command.diff` to `mate-applets/command/src/command.c` :
```bash
$ patch -p1 --merge -i command.diff
 ```
## 
**return to the `mate-applets` parent directory and run autogen.sh**
```bash
$ ./autogen.sh
```
**continue command-applet compilation as normal** 
```bash
$ cd mate-applets/command
$ sudo make install
```

documentation for compiling mate-applets @ [https://github.com/mate-desktop/mate-applets](https://github.com/mate-desktop/mate-applets]) & [www.mate-desktop.org](www.mate-desktop.org)

## Notes
If you can't patch `command.diff` - copy this repository's `command.c` to **`mate-applets/command/src`** \*(confirm overwrite Yes)\* *WARNING*: _If you have made any of your own changes to_ `mate-applets/command/src/command.c` _this will delete those changes_

If you want to change the icons size - edit the macro `ICON_SIZE` at the top of `command.c` after it has been patched to whatever size you want

```c
 37 
 38 /* Applet constants */
 39 #define ICON_SIZE      16
 40 #define APPLET_ICON    "utilities-terminal"
 41 #define ERROR_OUTPUT   "#"
 42 
```
