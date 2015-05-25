Steps in creating a live CD with problectix:

1. install uck...-all.deb from sourceforge.net
   I used 2.0.8

2. emacs installieren
   /etc/apt/sources/list:
      - problectix in die sourcen eintragen
      - universe einkommentieren (6 Zeilen)
      - multiverse einkommentieren (6 Zeilen)
   dist-upgrade
   aptitude install 
      problectix-emacs-texlive
      problectix-teacher-texlive-extra
      problectix-marklist-texlive

   /etc/environment
      TEXINPUTS="$HOME/gitolite/mytex//::$HOME/.problectix::.figures"

3. mit 
   System/Systemverwaltung/Create a USB startup disk 
   auf USB stick schreiben.

4. Dann von USB booten
