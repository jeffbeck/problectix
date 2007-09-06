#!/usr/bin/make
# This is the problectix ide Makefile
# $Id$
# Zur Erstellung des Debian-Pakets notwendig
DESTDIR=

############################################################
# to run this makefile you need:
############################################################

# A) Programs:
# tar
# unzip

# B) Downloads:
# eclipse (linux and windows)
# texlive (windows)




# Installing from this Makefile
#====================================



# Debian
#====================================

# Installation directories
LININSTALLDIR=$(DESTDIR)/usr/local
WININSTALLDIR=$(DESTDIR)/usr/local

# Build directories
BUILDDIRLIN=$(DESTDIR)/build-ide-lin
BUILDDIRWIN=$(DESTDIR)/build-ide-win

all: clean-win ide-win clean-lin ide-lin

help:
	@echo ' '
	@echo 'Most common options of this Makefile:'
	@echo '-------------------------------------'
	@echo ' '
	@echo '   make help'
	@echo '      show this help'
	@echo ' '
	@echo '   make ide-win'
	@echo '      build widows ide in build-ide-win'
	@echo ' '
	@echo '   make clean-win'
	@echo '      remove build-ide-win'
	@echo ' '
	@echo '   make ide-lin'
	@echo '      build linux ide in build-ide-lin'
	@echo ' '
	@echo '   make clean-lin'
	@echo '      remove build-ide-lin'
	@echo ' '

# build a package
#deb:
#	### deb
#	@echo 'Did you do a dch -i ?'
#	@sleep 8
#	dpkg-buildpackage -tc -uc -us -sa -rfakeroot
#	@echo ''
#	@echo 'Do not forget to tag this version in cvs'
#	@echo ''


clean-lin: 
	rm -rf  .$(BUILDDIRLIN)

clean-win:
	rm -rf  .$(BUILDDIRWIN)


# build linux
ide-lin:
	mkdir .$(BUILDDIRLIN)
	# unpack eclipse to directory 'eclipse'
	cp ./downloads/eclipse/eclipse-SDK*.tar.gz .$(BUILDDIRLIN)
	cd .$(BUILDDIRLIN); tar xzvf eclipse-SDK*.tar.gz
	rm .$(BUILDDIRLIN)/eclipse-SDK*.tar.gz
	# texlipse
	cp ./downloads/texlipse/net.sourceforge.texlipse*.zip .$(BUILDDIRLIN)/eclipse
	cd .$(BUILDDIRLIN)/eclipse; unzip net.sourceforge.texlipse*.zip
	rm .$(BUILDDIRWIN)/eclipse/net.sourceforge.texlipse*.zip


# build windows
ide-win:
	mkdir .$(BUILDDIRWIN)
	# unpack eclipse to directory 'eclipse'
	cp ./downloads/eclipse/eclipse-SDK*.zip .$(BUILDDIRWIN) 
	cd .$(BUILDDIRWIN); unzip eclipse-SDK*.zip
	rm .$(BUILDDIRWIN)/eclipse-SDK*.zip
	# texlipse
	cp ./downloads/texlipse/net.sourceforge.texlipse*.zip .$(BUILDDIRWIN)/eclipse
	cd .$(BUILDDIRWIN)/eclipse; unzip net.sourceforge.texlipse*.zip
	rm .$(BUILDDIRWIN)/eclipse/net.sourceforge.texlipse*.zip
	# texlive 
	cp ./downloads/texlive/texlive*.iso.zip .$(BUILDDIRWIN)
	cd .$(BUILDDIRWIN); unzip texlive*.iso.zip
	rm .$(BUILDDIRWIN)/texlive*.iso.zip
