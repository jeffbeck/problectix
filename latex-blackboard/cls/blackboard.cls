%% Identifikationsteil >
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tafel}

%% Folgende Optionen sind nicht zulaessig, die gibts aber in 'article'
\DeclareOption{a5paper}
    {\ClassError{proc}{Option `a5paper' nicht unterstuetzt}{}}
\DeclareOption{b5paper}
    {\ClassError{proc}{Option `b5paper' nicht unterstuetzt}{}}
\DeclareOption{onecolumn}%
    {\ClassError{proc}{Option `onecolumn' nicht unterstuetzt}{}}
\DeclareOption{titlepage}%
    {\ClassError{proc}{Option `titlepage' nicht unterstuetzt}{}}

%% Optionen die an 'article' weitergegeben werden sollen

\PassOptionsToClass{a4paper,12pt,fleqn,landscape}{article}

%% Alle Optionen an die Klasse 'article' weitergeben
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{ohnegitter}%
{\AtBeginDocument{\setcounter{gitter}{0}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{kreuze}%
{\AtBeginDocument{\setcounter{gitter}{1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{gitter}%
{\AtBeginDocument{\setcounter{gitter}{2}}}

%% obiges verarbeiten und 'article' aufrufen
\ProcessOptions
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hauptteil
%% Initialisierungsteil: Reservierungsanforderungen >
\AtBeginDocument{\input{tafelrahmen} \par}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Seiteneinstellungen

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Allgemeine Einstellungen 
\pagestyle{empty} %% Seitenzahlenangabe verbergen
\setlength{\parindent}{0cm} %% Einr\"{u}ckungen am Absatzanfang verhindern
\setlength{\unitlength}{1mm} %%L\"{a}ngeneinheit festlegen
\setlength{\paperwidth}{210mm} %% Papierbreite angeben
\setlength{\paperheight}{296mm} %%Papierh\"{o}he angeben
\setlength{\mathindent}{0mm}%% \setlength{\topsep}{4mm}
%% Satzspiegel einstellen:
\setlength{\textwidth}{280mm} %%
\setlength{\textheight}{195mm}
\setlength{\topmargin}{-42mm} %% Oberer Rand einstellen
\setlength{\oddsidemargin}{-17mm}%% Achtung, beginnt bei 25,4mm vom Blattrand!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fonts 
\newfont{\ueberschrift}{cmssbx10 at 20pt}  %% "Tafelbild"-Schrift
\newfont{\lernschrittetext}{cmssbx10 at 16pt} %% Lernschritte-Text
\newfont{\tafeltext}{cmss12 at 16pt}     %% Text an der Tafel
\newfont{\tafeltextit}{cmssi12 at 16pt}     %% Text an der Tafel
\newfont{\tafeltexttt}{cmtt12 at 16pt}     %% Text an der Tafel
%% Zeilenabstände
%% \baselineskip nicht im Vorspann änderbar
\setlength{\parskip}{7mm} %% Abstand zwischen Absätzen
%% Zähler
\newcounter{gitter}   
%% gitter (0): nix, (1): Gitterkreuze (2): Gitterlinien   
\setcounter{gitter}{2} %% Hilfslinien zeigen ?
\renewcommand{\baselinestretch}{1}
%% Saveboxen
\newsavebox{\thema}  %% Für den Titel
\newsavebox{\klasse}  %% Für die Klasse
%% Farben
\AtBeginDocument{\definecolor{weiss}{gray}{0.9}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Laden von Zusatzfiles >
%% Packages >
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{textcomp}
\RequirePackage{calc}
\RequirePackage{keyval}
%%\RequirePackage[T1]{fontenc}
\RequirePackage[latin1]{inputenc}
\RequirePackage{ngerman}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage[dvips]{color}
\RequirePackage{tafel}











