#!/usr/bin/make
# Dies ist das problectix Makefile


# Zur Erstellung des Debian-Pakets notwendig (make DESTDIR=/root/problectix)
DESTDIR=

# Where tex is
TEXMFMAIN=$(DESTDIR)/usr/share/texmf

# Where to put the latex macros 
TEX=$(TEXMFMAIN)/tex/latex/problectix

# Where to put the sources
TEXSRC=$(TEXMFMAIN)/source/latex/problectix

# Where to put the documentation
TEXDOC=$(TEXMFMAIN)/doc/latex/problectix

# Where to put the configuration
CONFIG=$(DESTDIR)/etc/problectix

# Where to put the executables/scripts
EXEC=$(DESTDIR)/usr/bin



# Allgemein (Debian und ML)
#====================================


# wenn root nicht in $HOME des auscheckenden users schreiben kann
# z.B. wenn /home eines Servers gemounted wird
userinstall: doku sty

# installation der im Userhome liegenden Verzeichnisse ins System
# (Rootrechte erfordelich)
rootinstall: 

# Alles auf einmal (root darf ueberallhin schreiben)
install: userinstall rootinstall



# Fuer Debian und ML
rootinstall:
	############### Kopieren der Scripte ##############################
	install -d $(EXEC)
	install -oroot -groot --mode=0555 scripten/problectix* $(EXEC)
	install -oroot -groot --mode=0555 scripten/jefflatex $(EXEC)
	#Kopieren der Konfigurationsdateien
	install -d $(CONFIG)
	install -oroot -groot --mode=0644 config/problectix* $(CONFIG)
	#
	# Kopieren der latex-files
	#
	install -d -m755 -oroot -groot $(TEX)
	# documentclass (sourcen)
	install -oroot -groot --mode=0644 latex/cls/*.cls $(TEX)
	# *.dtx und *.drv (sourcen)
	install -d -m755 -oroot -groot $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.dtx $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.drv $(TEXSRC)
	install -oroot -groot --mode=0644 latex/packages/*.ins $(TEXSRC)
	# *.sty-files
	install -oroot -groot --mode=0644 latex/packages/*.sty $(TEX)
	# inputfiles
	install -d -m755 -oroot -groot $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.tex $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.eps $(TEX)/input
	install -oroot -groot --mode=0644 latex/inputfiles/*.png $(TEX)/input
	# Beispieldateien
	install -d -m755 -oroot -groot $(TEXDOC)/examples
	install -d -m755 -oroot -groot $(TEXDOC)/examples/aufgaben
	install -d -m755 -oroot -groot $(TEXDOC)/examples/dokumente
	install -oroot -groot --mode=0644 latex/examples/aufgaben/*.tex $(TEXDOC)/examples/aufgaben
	install -oroot -groot --mode=0644 latex/examples/aufgaben/*.eps $(TEXDOC)/examples/aufgaben

	install -oroot -groot --mode=0644 latex/examples/dokumente/*.tex $(TEXDOC)/examples/dokumente
	# documentation
	install -d -m755 -oroot -groot $(TEXDOC)
	install -oroot -groot --mode=0644 latex/packages/*.dvi $(TEXDOC)
	install -oroot -groot --mode=0644 latex/packages/*.ps $(TEXDOC)

	############### ls -R aktualisieren is done by postinst
	# uncomment the following line when installing from this Makefile
	#texhash




doku:
	############### Doku erzeugen #####################################
	#cd latex/packages; latex kapack.drv; dvips kapack.dvi
	#cd latex/packages; latex teacherpack.drv; dvips teacherpack.dvi
	# 2x problectix.dvi
	cd latex/packages; latex problectix.drv; dvips problectix.dvi
	cd latex/packages; latex problectix.drv; dvips problectix.dvi


sty:
	############### sty-files erzeugen ################################
	pwd
	cd latex/packages; latex problectix.ins > /dev/null
	pwd


clean:
	# Logfiles u.a. loeschen
	rm -f latex/packages/*.log
	rm -f latex/packages/*.aux
	rm -f latex/packages/*.toc
	rm -f latex/packages/problectix.dvi
	rm -f latex/packages/problectix.ps
	rm -f latex/packages/kapck.sty
	rm -f latex/packages/teacherpack.sty





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

