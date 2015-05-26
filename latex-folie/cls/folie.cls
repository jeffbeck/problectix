%% Identifikationsteil >
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{folie}

%% Folgende Optionen sind nicht zulaessig, die gibts aber in 'article'
\DeclareOption{a5paper}
    {\ClassError{proc}{Option `a5paper' nicht unterstuetzt}{}}
\DeclareOption{b5paper}
{\CdlassError{proc}{Option `b5paper' nicht unterstuetzt}{}}
\DeclareOption{onecolumn}%
    {\ClassError{proc}{Option `onecolumn' nicht unterstuetzt}{}}
\DeclareOption{titlepage}%
    {\ClassError{proc}{Option `titlepage' nicht unterstuetzt}{}}%% Optionen die an 'article' weitergegeben werden sollen

\PassOptionsToClass{a4paper,12pt,fleqn,oneside}{article}

%% Alle Optionen an die Klasse 'article' weitergeben
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}



%% obiges verarbeiten und 'article' aufrufen
\ProcessOptions
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hauptteil

%% Initialisierungsteil: Reservierungsanforderungen >
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Seiteneinstellungen
\setlength{\voffset}{-25.4mm}
\setlength{\hoffset}{-25.4mm}
\setlength{\headheight}{8mm}%
\setlength{\headsep}{3mm}
\setlength{\footskip}{8mm}%%
\setlength{\headsep}{5mm}%
\setlength{\textwidth}{190mm}
\setlength{\textheight}{270mm}
\setlength{\topmargin}{0mm}
\setlength{\oddsidemargin}{6.5mm}%
\setlength{\evensidemargin}{6.5mm}%
\setlength{\parindent}{0mm}%

%%\setlength{\topskip}{0mm}
%% Abstand zwischen Spalten:
\setlength{\columnsep}{8mm}%
%% Folgendes Funktioniert nicht. Besser eigene Listenumgebung
%%\setlength{\parsep}{0mm}
%%\setlength{\itemsep}{0mm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Folgende Einstellungen werden mit Anfang des Dokuments ausgeführt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\renewcommand{\headrulewidth}{0.25mm}
\renewcommand{\footrulewidth}{0.25mm}
\pagestyle{fancy}
\lhead{\small \today}
\chead{\usebox{\titelo}}
\rhead{\small Bz: \jobname.tex(\thepage)}
\lfoot{\usebox{\fach}}
\cfoot{\usebox{\titelu}}
\rfoot{\usebox{\quelle}}

%% Um bei Multiple-Choice-Aufzählungen gleichmässiges Verteilen zu ermöglichen
%% wir dieser stark variable Abstand benutzt >
%\setlength{\multicolbaselineskip}{0pt plus10pt}

}%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Laden von Zusatzfiles >
%% Packages >
\RequirePackage{ifthen}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{textcomp}
\RequirePackage{afterpage}
\RequirePackage{calc}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{ngerman}
\RequirePackage{fancybox}
\RequirePackage{marvosym}
\RequirePackage{fancyhdr}
%%\RequirePackage[dvips]{color}
\RequirePackage{moreverb}
\RequirePackage{twoopt}
% ams-Befehl square ab jetzt nutzlos, da \square von SIunits neu definiert wird
\RequirePackage[cdots,amssymb,thickqspace]{SIunits} 
%%\RequirePackage{comment}
%% Erstes eigenes Paket: Befehle für Arbeitsblätter
%%\RequirePackage{teacherpack}
%% Zweites eigenes Paket: Befehle um KA's zu erzeugen.
%% teacherpack muss geladen sein
%%\RequirePackage{kapack}
%% Auswerten von RCS-Feldern
\RequirePackage{rcs}
%Leeres Feld setzen
\RCS $Revision\RcsEmptyValue$

%% Macros für Folien laden
\RequirePackage{folie}


%% todo

%% 2 bilder auf 1 Seite






