#!/bin/bash

echo -e "cloning mate-applets repository and replacing appropriate command-applet files, please wait...\n===============================";
rm ./docs/command-applet-icon.png;
git clone https://github.com/mate-desktop/mate-applets.git;
echo -e "\nreplacing command-applet source files....";
cp command-preferences.ui mate-applets/command/data;    
cp org.mate.panel.applet.command.gschema.xml.in mate-applets/command/data;    
cp command.c mate-applets/command/src;   
echo -e "===============================\nsetup.sh has completed..."
