#!/bin/bash
echo "make sure you runed the command as root \"sudo ./iconmaker.sh \""
echo "enter your application name want to be icon name:"
read applicationname
echo "enter a name for icon (any name)"
read iconname
echo "enter your application excute location or name : "
read location
echo "[Desktop Entry]
	Name=$applicationname
	Exec=$location
	Icon=$iconname
	Type=Application
	" > /usr/share/applications/$applicationname.desktop
  echo "where is your image? or if it's in this directory enter it's name"
  read imagelocate
  cp $imagelocate /usr/share/icons/$iconname
  exit
