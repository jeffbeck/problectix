#!/bin/sh
# creates a *.png picture of a *.tex-file
# $1:  the directory, where the *.tex-source is located
# $2:  the name of the *.tex-file (without the extension)

export TEXINPUTS="$HOME/mytex//::$HOME/cvs-workspace/kaelteaufgaben//::./figures"

echo "<p> TEXINPUTS: $TEXINPUTS <p>"
cd $1
latex temp-datei.tex

dvips -x2074 -y2074 -T 40cm,80cm temp-datei.dvi

# -crop 0x0 # Beschneiden
convert -crop 0x0 temp-datei.ps png:$2.tex-gen.png
