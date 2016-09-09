#!/bin/bash
echo "make sure you runed the command as root \"sudo ./iconmaker.sh \""
echo "enter your application name want to be icon name:"
read applicationname
echo "enter your application icon name \"no .png\": "
read iconname
echo "place the $iconname.png or $iconname.svg file in /usr/share/icons"
echo "enter your application excute location or name : "
read location
echo "[Desktop Entry]
	Name=$applicationname
	Exec=$location
	Icon=$iconname
	Type=Application
	" > /usr/share/applications/$applicationname.desktop
