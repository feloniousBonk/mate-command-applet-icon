#!/bin/bash

DATA_DIR="mate-applets/command/data"
SRC_DIR="mate-applets/command/src"

echo -e "cloning mate-applets repository and replacing appropriate command-applet files, please wait...\n===============================";
rm ./docs/command-applet-icon.png;
git clone https://github.com/mate-desktop/mate-applets.git;
echo -e "\nreplacing command-applet source files....";
cp command-preferences.ui $DATA_DIR;    
cp org.mate.panel.applet.command.gschema.xml.in $DATA_DIR;    
cp command.c $SRC_DIR;   
echo -e "===============================\nsetup.sh has completed..."
