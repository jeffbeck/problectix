#!/bin/sh
export TEXINPUTS="$HOME/mytex//::./figures"

echo "<p> TEXINPUTS: $TEXINPUTS <p>"
cd $1
latex $2

echo "<p> dvips <p>"

dvips $2