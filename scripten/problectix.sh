#!/bin/sh
# creates post-script from a *.tex-file
# $1:  the directory, where the *.tex-source is located
# $2:  the name of the *.tex-file (without the extension)

export TEXINPUTS="$HOME/mytex//::$HOME/cvs-workspace/kaelteaufgaben//::./figures"

echo "<p> TEXINPUTS: $TEXINPUTS <p>"
cd $1
latex $2
latex $2

echo "<p> dvips <p>"

dvips $2