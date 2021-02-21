#!/bin/bash

rm -rf ./docs/command-applet-icon.png
git clone https://github.com/mate-desktop/mate-applets.git;    
cp command-preferences.ui mate-applets/command/data;    
cp org.mate.panel.applet.command.gschema.xml.in mate-applets/command/data;    
cp command.c mate-applets/command/src   
