# mate-command-applet-icon                                                                                                                                           
Mate's command-applet for mate-panel with added functionality to choose a custom icon. 

![screenshot](/docs/command-applet-icon.png)

## Requirements

**You need at least** :

- mate-panel
- mate-common
- gtk+-3.14.0
- glib-2.36.0
- libgtop-2.12.0
- libwnck

**Some extras that improve functionality** :
- libnotify
- dbus-0.34

## Files
`setup.sh` : initial setup script to clone mate-applet repository and replace old command-applet files with new

`command.c` : full source code file with added functionality

`command-preferences.ui` : xml file for the command-applet preferences dialog box with added file-chooser

`org.mate.panel.applet.command.gschema.xml.in` : glib schema file for the applet with added key info for icon chooser

`docs/command.diff` : diff file for patching the original source code from Mate's github repository

## Configure
**clone this repository** :
```bash
$ git clone https://github.com/feloniousBonk/mate-command-applet-icon.git
```
## 
**enter this repository's directory** :

- make `setup.sh` executable
```bash
$ chmod +x setup.sh
```
- run `setup.sh` script
```bash
$ bash ./setup.sh
```
## 

**setup.sh will clone `mate-applets` repository and replace appropriate files** 

- cd into **`mate-applets/`** directory and run `autogen.sh`
```bash
$ cd mate-applets/
$ bash ./autogen.sh
```

\*_if autogen.sh fails it will tell you what dependency you are missing in error output. Install missing dependency with your system's package manager_\*
## 

**compile command-applet** 
```bash
$ cd command/
$ sudo make install
```
documentation for compiling mate-applets @ [https://github.com/mate-desktop/mate-applets](https://github.com/mate-desktop/mate-applets) & [https://www.mate-desktop.org](https://www.mate-desktop.org)

## Notes
If you want to change the icons size - edit the macro `ICON_SIZE` at the top of `command.c` to whatever size you want

```c
 37 
 38 /* Applet constants */
 39 #define ICON_SIZE      16
 40 #define APPLET_ICON    "utilities-terminal"
 41 #define ERROR_OUTPUT   "#"
 42 
```
