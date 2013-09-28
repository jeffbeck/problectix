#!/usr/bin/make
# $Id$
# Dies ist das problectix Makefile


# Zur Erstellung des Debian-Pakets notwendig (make DESTDIR=/root/problectix)
DESTDIR=

# Where problectix-anki is
ANKI=$(DESTDIR)/usr/share/problectix-anki

# Where tex is
TEXMFMAIN=$(DESTDIR)/usr/share/texmf

# Where to put the latex macros 
TEX=$(TEXMFMAIN)/tex/latex/problectix

# Where to put the sources
TEXSRC=$(TEXMFMAIN)/source/latex/problectix

# Where to put the documentation
TEXDOC=$(TEXMFMAIN)/doc/latex/problectix


# Where to put the cwpuzzle stuff 
CWPUZZLETEX=$(TEXMFMAIN)/tex/latex/cwpuzzle

# Where to put the cwpuzzle documentation
CWPUZZLEDOC=$(TEXMFMAIN)/doc/latex/cwpuzzle

# Where to install teadmillix
# binary: $(EXEC)

# Where to install teadmillix
TREADDATA=$(DESTDIR)/usr/share/treadmillix/data


# Where to put the configuration
CONFIG=$(DESTDIR)/etc/problectix

# Where to put the executables/scripts
EXEC=$(DESTDIR)/usr/bin
SBIN=$(DESTDIR)/usr/sbin

# Where to put the perl modules
MOD=$(DESTDIR)/usr/share/perl5

# Where to put the emacs files
EMACS=$(DESTDIR)/etc/emacs/site-start.d

# unity starter and desktop icon
DESKTOP=$(DESTDIR)/usr/share/applications
ICON=$(DESTDIR)/usr/share/pixmaps


# Allgemein (Debian und ML)
#====================================

help:
	@echo ' '
	@echo 'Most common options of this Makefile:'
	@echo '-------------------------------------'
	@echo ' '
	@echo '   make help'
	@echo '      show this help'
	@echo ' '
	@echo '   make userinstall'
	@echo '      create docs, sty-files, .... (user permissions)'
	@echo ' '
	@echo '   make rootinstall'
	@echo '      install the stuff into the system (root permissions required)'
	@echo ' '
	@echo '   make install'
	@echo '      userinstall and rootinstall'
	@echo ' '
	@echo '   make deb'
	@echo '      create a debian lenny package'
	@echo ' '
	@echo '   There are more options (see Makefile)'
	@echo ' '



# wenn root nicht in $HOME des auscheckenden users schreiben kann
# z.B. wenn /home eines Servers gemounted wird
userinstall: doku sty doku-folie sty-folie doku-bb sty-bb

# Alles auf einmal (root darf ueberallhin schreiben)
install: userinstall rootinstall


# Alle erzeugten Dateien löschen
clean:  clean-problectix clean-folie
	# cleaning debian packaging stuff
	rm -rf debian/problectix
	rm -rf debian/problectix-crosswords
	rm -rf debian/problectix-anki
	rm -rf debian/problectix-emacs
	rm -rf debian/problectix-emacs-texlive
	rm -rf debian/problectix-marklist
	rm -rf debian/problectix-teacher
	rm -rf debian/problectix-teacher-texlive
	rm -rf debian/problectix-teacher-texlive-extra


# create a zip-file for windows installation from the debian tree
winzip:
	# go to dir
	cd debian/problectix/usr/share/texmf/tex/latex; zip -r ../../../../../../..//problectix.zip ./problectix
	cd debian/problectix/usr/share/texmf/doc/latex; zip -r ../../../../../../..//problectix-doc.zip ./problectix



# build a package
deb:
	### deb
	@echo 'Did you do a dch -i ?'
	@sleep 8
	dpkg-buildpackage -b -tc -uc -us -sa -rfakeroot
	@echo ''
	@echo 'Do not forget to tag this version in cvs'
	@echo ''



# Fuer Debian und ML
rootinstall:
	############### Kopieren der Scripte ##############################
	install -d $(EXEC)
	install -oroot -groot --mode=0555 scripten/problectix*[a-z1-9-] $(EXEC)
	# this makes sure that problectix is copied
	install -oroot -groot --mode=0555 scripten/problectix $(EXEC)
	install -oroot -groot --mode=0555 scripten/jefflatex $(EXEC)
	install -oroot -groot --mode=0555 scripten/a5-landscape-on-a4 $(EXEC)
	install -oroot -groot --mode=0555 scripten/einmaleins $(EXEC)
	install -d $(SBIN)
	install -oroot -groot --mode=0755 scripten-admin/problectix-TEXINPUTS $(SBIN)
	#Kopieren des perl-moduls
	install -d $(MOD)
	install -oroot -groot --mode=0644 libperl/problectix.pm $(MOD)
	#Kopieren der Konfigurationsdateien
	install -d $(CONFIG)
	install -oroot -groot --mode=0644 config/problectix* $(CONFIG)
	#
	# Kopieren der latex-files
	#
	install -d -m755 -oroot -groot $(TEX)
	# documentclass (sourcen)
	install -oroot -groot --mode=0644 latex/cls/*.cls $(TEX)
	install -oroot -groot --mode=0644 latex-folie/cls/*.cls $(TEX)
	# *.dtx und *.drv (sourcen)
	install -d -m755 -oroot -groot $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.dtx $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.drv $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.ins $(TEXSRC)
	install -oroot -groot --mode=0644 latex-folie/packages/*.dtx $(TEXSRC)
	install -oroot -groot --mode=0644 latex-folie/packages/*.drv $(TEXSRC)
	install -oroot -groot --mode=0644 latex-folie/packages/*.ins $(TEXSRC)
	# *.sty-files
	install -oroot -groot --mode=0644 latex/packages/*.sty $(TEX)
	install -oroot -groot --mode=0644 latex-folie/packages/*.sty $(TEX)
	# inputfiles
	install -d -m755 -oroot -groot $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.tex $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.eps $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.png $(TEX)/input
	install -oroot -groot --mode=0644 qcad-examples//*.epsi $(TEX)/input
	# templates
	install -d -m755 -oroot -groot $(TEX)/template
	install -oroot -groot --mode=0644 latex/templates/*.tex $(TEX)/template
	# Beispieldateien
	install -d -m755 -oroot -groot $(TEXDOC)/examples
	install -d -m755 -oroot -groot $(TEXDOC)/qcad-examples
	install -d -m755 -oroot -groot $(TEXDOC)/examples/aufgaben
	install -d -m755 -oroot -groot $(TEXDOC)/examples/dokumente
	install -d -m755 -oroot -groot $(TEXDOC)/examples/test
	install -oroot -groot --mode=0644 latex/examples/aufgaben/*.tex $(TEXDOC)/examples/aufgaben
	install -oroot -groot --mode=0644 latex/examples/aufgaben/*.eps $(TEXDOC)/examples/aufgaben
	install -oroot -groot --mode=0644 latex/examples/aufgaben/*.png $(TEXDOC)/examples/aufgaben
	install -oroot -groot --mode=0644 qcad-examples/*.dxf $(TEXDOC)/qcad-examples

	install -oroot -groot --mode=0644 latex/examples/dokumente/*.tex $(TEXDOC)/examples/dokumente
	install -oroot -groot --mode=0644 latex/examples/test/*.tex $(TEXDOC)/examples/test
	# cwpuzzle
	install -d -m755 -oroot -groot $(CWPUZZLETEX)
	install -oroot -groot --mode=0644 crosswords/latex/gene/cwpuzzle.sty $(CWPUZZLETEX)
	install -d -m755 -oroot -groot $(CWPUZZLEDOC)
	install -oroot -groot --mode=0644 crosswords/latex/gene/cwpuzzle.dvi $(CWPUZZLEDOC)
	install -oroot -groot --mode=0644 crosswords/latex/gene/cwpuzzle.pdf $(CWPUZZLEDOC)
	# problectix-anki
	@install -d -m755 -oroot -groot $(ANKI)
	@install -d -m755 -oroot -groot $(ANKI)/latex
	@install -oroot -groot --mode=0644 anki/latex/anki-preamble.tex  $(ANKI)/latex
	@install -oroot -groot --mode=0644 anki/latex/anki-postamble.tex  $(ANKI)/latex
	@install -oroot -groot --mode=0644 anki/latex/preamble-input.tex  $(ANKI)/latex
	@install -d -m755 -oroot -groot $(ANKI)/latex-source-examples
	@install -oroot -groot --mode=0644 anki/latex-source-examples/multi-qna.tex  $(ANKI)/latex-source-examples
	@install -oroot -groot --mode=0644 anki/latex-source-examples/multi-qna-anki.txt  $(ANKI)/latex-source-examples
	# treadmillix
	install -d $(EXEC)
	install -oroot -groot --mode=0555 treadmillix/scripts/treadmillix $(EXEC)
	install -d $(TREADDATA)
	install -oroot -groot --mode=0555 treadmillix/data/*[12345] $(TREADDATA)

	# emacs
	install -d -m755 -oroot -groot $(EMACS)
	install -oroot -groot --mode=0644 emacs/site-start.d/55jeff.el $(EMACS) 

	# anki
	install -d $(EXEC)
	install -oroot -groot --mode=0555 anki/scripts/problectix-anki $(EXEC)
	install -d -m0755 -oroot -groot $(DESKTOP)
	install -oroot -groot --mode=0644 anki/icon/problectix-anki.desktop $(DESKTOP)
	echo '   * Installing icon'
	install -d -m0755 -oroot -groot $(ICON)
	install -oroot -groot --mode=0644 anki/icon/problectix-anki-128.png $(ICON)/problectix-anki.png


	# documentation
	install -d -m755 -oroot -groot $(TEXDOC)
	install -oroot -groot --mode=0644 latex/packages/*.dvi $(TEXDOC)
	install -oroot -groot --mode=0644 latex/packages/*.ps $(TEXDOC)
	install -oroot -groot --mode=0644 latex/packages/*.pdf $(TEXDOC)
	install -oroot -groot --mode=0644 latex-folie/packages/*.dvi $(TEXDOC)
	install -oroot -groot --mode=0644 latex-folie/packages/*.ps $(TEXDOC)

	######## ls -R update is done by debian-postinst-script  ##########
	# uncomment the following line when installing from this Makefile
	#texhash

# Use this to install the picture-part
pictures:
	############### Kopieren der Scripte ##############################
	install -d $(EXEC)
	install -oroot -groot --mode=0555 scripten-pictures/problectix-pictures $(EXEC)



doku:
	############### Doku erzeugen #####################################
	#cd latex/packages; latex kapack.drv; dvips kapack.dvi
	#cd latex/packages; latex teacherpack.drv; dvips teacherpack.dvi
	# 2x problectix.dvi
	cd latex/packages; latex problectix.drv; dvips problectix.dvi
	cd latex/packages; latex problectix.drv; dvips problectix.dvi
	cd latex/packages; ps2pdf problectix.ps

doku-folie:
	cd latex-folie/packages; latex folie.drv; dvips folie.dvi
	cd latex-folie/packages; latex folie.drv; dvips folie.dvi

doku-bb:
	cd latex-blackboard/packages; latex bb.drv; dvips bb.dvi

bb:
	# documentclass (sourcen)
	install -oroot -groot --mode=0644 latex-blackboard/cls/*.cls $(TEX)
	# *.sty-files
	install -oroot -groot --mode=0644 latex-blackboard/packages/*.sty $(TEX)
	install -d -m755 -oroot -groot $(TEX)/input
	install -oroot -groot --mode=0644 latex-blackboard/inputfiles/*.tex $(TEX)/input

sty:
	############### sty-files erzeugen ################################
	pwd
	cd latex/packages; latex problectix.ins > /dev/null
	pwd

sty-folie:
	cd latex-folie/packages; latex folie.ins > /dev/null

sty-bb:
	############### sty-files erzeugen ################################
	pwd
	cd latex-blackboard/packages; latex bb.ins > /dev/null
	pwd


clean-problectix:
	############### Logfiles u.a. loeschen ############################
	rm -f latex/packages/*~
	rm -f latex/packages/*.log
	rm -f latex/packages/*.aux
	rm -f latex/packages/*.toc
	rm -f latex/packages/problectix.dvi
	rm -f latex/packages/problectix.ps
#	rm -f latex/packages/kapack.sty
#	rm -f latex/packages/teacherpack.sty

clean-folie:
	rm -f latex-folie/packages/*~
	rm -f latex-folie/packages/*.log
	rm -f latex-folie/packages/*.aux
	rm -f latex-folie/packages/*.toc
	rm -f latex-folie/packages/folie.dvi
	rm -f latex-folie/packages/folie.ps
	rm -f latex-folie/packages/folie.sty
	rm -f latex-folie/packages/folie.aux
	rm -f latex-folie/packages/folie.dvi
	rm -f latex-folie/packages/folie.log





root-suse-install:
	# Nur fuer SuSE


root-debian-install:
	# Nur fuer debian




rpm:
	# Kopiere die SPEC-Datei an den richtigen Platz (ML)
	#cp -a rpm-bauen/problectix.spec /usr/src/packages/SPECS

tar:
	# Erstelle ein neues *.tar.gz fuer den build-Prozess
	#cd ../ ; tar -cvzf /usr/src/packages/SOURCES/problectix.tar.gz problectix


rpm-ba: rpm tar
	# ich erzeuge ein neues rpm
	#cd /usr/src/packages/SPECS ; rpm -ba problectix.spec

