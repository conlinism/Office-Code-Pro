#!/bin/bash

#Do we have git?
if test ! $(which git); then
  echo "Must have git installed for this to work!"
  exit 0
fi

#Download the repo and cd to fonts folder (Thanks to w0ng!)
git clone https://github.com/conlinism/Office-Code-Pro.git Office-Code-Pro;
cd Office-Code-Pro/Fonts/OTF;

#Magical find command to cp all fonts to /Library/Fonts
find . -name "*.otf" -exec cp {} ~/Library/Fonts/ \;

#All done, let's clean up a bit
cd ../../..;
rm -rf Office-Code-Pro;
