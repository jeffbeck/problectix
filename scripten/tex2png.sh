#!/bin/sh
export TEXINPUTS="$HOME/mytex//::$HOME/cvs-workspace/kaelteaufgaben//::./figures"

echo "<p> TEXINPUTS: $TEXINPUTS <p>"
cd $1
latex temp-datei.tex

dvips -x2074 -y2074 -T 40cm,80cm temp-datei.dvi

convert -crop 0x0 temp-datei.ps png:$2.tex-gen.png
