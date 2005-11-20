#******************************************************************************
#* $Id$
#******************************************************************************
#* Author: Gerd Neugebauer
#*=============================================================================

INSTALLDIR = /usr/local/lib/texmf/tex/latex/cwpuzzle

FILES	   = cwpuzzle.dtx	\
	     cwpuzzle.ins	\
	     Makefile

LATEX      = latex
MAKEINDEX  = makeindex
RM         = rm -f
INSTALL    = install
MKDIR      = mkdir

#*=============================================================================

all: cwpuzzle.sty cwpuzzle.dvi

cwpuzzle.sty: cwpuzzle.dtx cwpuzzle.ins
	$(RM) cwpuzzle.cls cwpuzzle.sty
	$(LATEX) cwpuzzle.ins

cwpuzzle.dvi: cwpuzzle.dtx cwpuzzle.sty
	$(LATEX) cwpuzzle.dtx
	$(LATEX) cwpuzzle.dtx
	$(MAKEINDEX) -s gind.ist cwpuzzle
	$(MAKEINDEX) -s gglo.ist -o cwpuzzle.gls cwpuzzle.glo
	$(LATEX) cwpuzzle.dtx

