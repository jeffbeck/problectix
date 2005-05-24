%% Identifikationsteil >
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{teacher}

\typeout{Class teacher.cls loaded}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Initialisierungsteil
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Counters needed
\newcounter{arial}
\setcounter{arial}{0}
\newcounter{frame}
\setcounter{frame}{0}
\newcounter{showdraft}
\setcounter{showdraft}{0}

\newcounter{versuch}
\setcounter{versuch}{0}

\newcounter{gitterhoehe}
\newlength{\gitterhoehe}

\newcounter{arblsg}
\setcounter{arblsg}{0}
\newcounter{nothing}
\setcounter{nothing}{0}

\newcounter{punktebefehle}
\setcounter{punktebefehle}{0}

\newcounter{mainpage}
\newcounter{apppage}

\newsavebox{\aufgabenmarke}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fuer lll, ALPHA
\newlength{\llllaenge}
\newcounter{lllnumber}
\setcounter{lllnumber}{0}
\newcounter{lllzeilen}
\newlength{\lllzeilensumme}
\newlength{\lllsumme}
\newlength{\llltmpsumme}

%% Befehle definieren, ohne Inhalt a-z
\newcommand{\lllause}{} \newcommand{\lllbuse}{} \newcommand{\lllcuse}{} 
\newcommand{\lllduse}{} \newcommand{\llleuse}{} \newcommand{\lllfuse}{}
\newcommand{\lllguse}{} \newcommand{\lllhuse}{} \newcommand{\llliuse}{}
\newcommand{\llljuse}{} \newcommand{\lllkuse}{} \newcommand{\lllluse}{}
\newcommand{\lllmuse}{} \newcommand{\lllnuse}{} \newcommand{\lllouse}{} 
\newcommand{\lllpuse}{} \newcommand{\lllquse}{} \newcommand{\lllruse}{}
\newcommand{\lllsuse}{} \newcommand{\llltuse}{} \newcommand{\llluuse}{} 
\newcommand{\lllvuse}{} \newcommand{\lllwuse}{} \newcommand{\lllxuse}{}
\newcommand{\lllyuse}{} \newcommand{\lllzuse}{}
% fuer lll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%% \TeilFach
\newcommand{\teilfachuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash TeilFach\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\TeilFach}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\teilfachuse}[2][]{#2}}
}

%%%% \School
\newcommand{\schooluse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash School\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\School}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\schooluse}[2][]{#2}}
}


%%%% \UserToken
\newcommand{\usertokenuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash UserToken\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\UserToken}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\usertokenuse}[2][]{#2}}
}

%%%% \Titelo
\newcommand{\titelouse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Titelo\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Titelo}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\titelouse}[2][]{#2}}
}

%%%% \Titelu
\newcommand{\titeluuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Titelu\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Titelu}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\titeluuse}[2][]{#2}}
}

%%%% \Fach
\newcommand{\fachuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Fach\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Fach}[2][]{%
%%\sbox{\fach}{\scriptsize  #2}
%% \ifthenelse{\equal{#2}{bau} \or \equal{#2}{Bau}}
%%    {\sbox{\fach}{\scriptsize  Bautechnik} \setcounter{fach}{1}}
%%    {}
%% \ifthenelse{\equal{#2}{holz} \or \equal{#2}{Holz}}
%%    {\sbox{\fach}{\scriptsize  Holztechnik} \setcounter{fach}{2}}
%%    {}
%% \ifthenelse{\equal{#2}{metall} \or \equal{#2}{Metall}}
%%    {\sbox{\fach}{\scriptsize  Metalltechnik} \setcounter{fach}{3}}
%%    {}
%% \ifthenelse{\equal{#2}{t} \or \equal{#2}{T}}
%%    {\sbox{\fach}{\scriptsize  Technologie} \setcounter{fach}{4}}
%%    {}
%% \ifthenelse{\equal{#2}{ap} \or \equal{#2}{AP}}
%%    {\sbox{\fach}{\scriptsize  Arbeitsplanung} \setcounter{fach}{5}}
%%    {}
%% \ifthenelse{\equal{#2}{m} \or \equal{#2}{M}}
%%    {\sbox{\fach}{\scriptsize  Mathe} \setcounter{fach}{6}}
%%    {}
%% \ifthenelse{\equal{#2}{d} \or \equal{#2}{D}}
%%    {\sbox{\fach}{\scriptsize  Detsch} \setcounter{fach}{7}}
%%    {}
%% \ifthenelse{\equal{#2}{gkwk} \or \equal{#2}{GKWK}}
%%    {\sbox{\fach}{\scriptsize  GK\,/\,WK} \setcounter{fach}{8}}
%%    {}
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\fachuse}[2][]{#2}}
}

%%%% \Datum
\newcommand{\datumuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Datum\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Datum}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\datumuse}[2][]{#2}}
}


%%%% \Quelle
\newcommand{\quelleuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Quelle\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Quelle}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\quelleuse}[2][]{#2}}
}

%%%% \Klasse
\newcommand{\klasseuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Klasse\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Klasse}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\klasseuse}[2][]{#2}}
}

%%%% \Muendlich
\newcommand{\muendlichuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Muendlich\{\}\hspace{-1ex}}}%
  }{Mündl.\,:\xspace}
}
\newcommand{\Muendlich}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\muendlichuse}[2][]{#2}}
}

%%%% \Note
\newcommand{\noteuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Note\{\}\hspace{-1ex}}}%
  }{Note\,:\xspace}
}
\newcommand{\Note}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\noteuse}[2][]{#2}}
}

%%%% \Name
\newcommand{\nameuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Name\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Name}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\nameuse}[2][]{#2}}
}

%%%% \Blatt
\newcommand{\blattuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Blatt\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Blatt}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{
     \ifthenelse{\equal{}{#2}}{
        \renewcommand{\blattuse}[2][]{\thepage}
     }{
        \renewcommand{\blattuse}[2][]{#2}
     }
  }
}

%%%% \Ausdruck
\newcommand{\ausdruckuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Ausdruck\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Ausdruck}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{
     \ifthenelse{\equal{}{#2}}{
        \renewcommand{\ausdruckuse}[2][]{Ausdruck: \today{} (\usertokenuse{})}
     }{
        \renewcommand{\ausdruckuse}[2][]{#2}
     }
  }
}

%%%% \Revision
\newcommand{\revisionuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Revision\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Revision}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{
     \ifthenelse{\equal{}{#2}}{
        \renewcommand{\revisionuse}[2][]{\jobname.tex(\thepage): \RCSMaster}
     }{
        \renewcommand{\revisionuse}[2][]{#2}
     }
  }
}


\newsavebox{\examtypenumber}
\newcommand{\ExamType}[2][]{%
  \ifthenelse{\equal{#2}{1}}%
    {\savebox{\examtypenumber}{\bf I}
     \setcounter{projektbezug}{0}
    }%
    {\savebox{\examtypenumber}{\bf II}
     \setcounter{projektbezug}{1}
 }
}


%%%% \APtime
\newcommand{\aptimeuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash APtime\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\APtime}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\aptimeuse}[2][]{#2}}
}

%%%% \Mtime
\newcommand{\mtimeuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Mtime\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Mtime}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\mtimeuse}[2][]{#2}}
}

%%%% \Ttime
\newcommand{\ttimeuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Ttime\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Ttime}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\ttimeuse}[2][]{#2}}
}


%%%% \Totaltime
\newcommand{\totaltimeuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Totaltime\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Totaltime}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\totaltimeuse}[2][]{#2}}
}

%%%% \DocType
\newcommand{\doctypeuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Doctype\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\DocType}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\doctypeuse}[2][]{#2}}
}

%%%% \Entwurf
\newcommand{\Entwurf}[2][120]{
   \draftcopyFirstPage{1}
   \ifthenelse{\equal{}{#2}}{
      \draftcopyName{Entwurf \RCSMaster}{#1}
   }{
      \draftcopyName{#2 \RCSMaster}{#1}
   }
}


%% Packages
\RequirePackage{fancyhdr}
\RequirePackage{ifthen}
\RequirePackage[dvips]{color}
\RequirePackage{twoopt}

\definecolor{arblsgcolor}{gray}{1}
\definecolor{arblsgmustercolor}{gray}{1}

%% setting the counters to show 'all'
\newcounter{loesungslinienzeigen} \setcounter{loesungslinienzeigen}{1}
\newcounter{teilaufnummerierung} \setcounter{teilaufnummerierung}{0}
\newcounter{aufgabenpunkte} \setcounter{aufgabenpunkte}{0}
\newcounter{aufgabenkopfzeile} \setcounter{aufgabenkopfzeile}{1}
\newcounter{aufgabennummerierung} \setcounter{aufgabennummerierung}{0}
\newcounter{aufgabenstellung} \setcounter{aufgabenstellung}{1}
\newcounter{aufgabenfusszeile} \setcounter{aufgabenfusszeile}{1}
\newcounter{loesungkopfzeile} \setcounter{loesungkopfzeile}{1}
\newcounter{loesungen} \setcounter{loesungen}{1}
\newcounter{dateinamen} \setcounter{dateinamen}{1} 
\newcounter{dehnen} \setcounter{dehnen}{0}
\newcounter{fachangabe} \setcounter{fachangabe}{1}
\newcounter{fachangabepzk} \setcounter{fachangabepzk}{1}
\newcounter{punkteangabepzk} \setcounter{punkteangabepzk}{1}
\newcounter{punktzahlkasten} \setcounter{punktzahlkasten}{1}
\newcounter{punktesummezeigen} \setcounter{punktesummezeigen}{1}
\newcounter{aufgabentitel} \setcounter{aufgabentitel}{1}
\newcounter{gruppeninfo} \setcounter{gruppeninfo}{2}
\newcounter{gruppeninfohead} \setcounter{gruppeninfohead}{1}
\newlength{\lkaabstand} \setlength{\lkaabstand}{3mm}
\newlength{\zusatzlkaabstand} \setlength{\zusatzlkaabstand}{1mm}
\newlength{\loesungslinienbreite} \setlength{\loesungslinienbreite}{0.35mm}

\newcounter{debuggen} \setcounter{debuggen}{0}



%% Standard-Settings
\AtEndOfClass{
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}

\setlength{\textheight}{262mm}%
\setlength{\textwidth}{175mm}

\setlength{\voffset}{-25.4mm}
\setlength{\hoffset}{-25.4mm}

\setlength{\topmargin}{4mm} 
\setlength{\oddsidemargin}{20mm}
\setlength{\evensidemargin}{20mm}
\setlength{\topskip}{0mm}

\reversemarginpar
\setlength{\marginparwidth}{10mm}
\setlength{\marginparsep}{4mm}

\setlength{\footskip}{7.5mm}%
\setlength{\headheight}{8mm}%
\setlength{\headsep}{5mm}%

%% setting the mark before the exam-number
\ifthenelse{\value{aufgabennummerierung}=0}{%
    \sbox{\aufgabenmarke}{\textbf {Aufgabe}} %^^A Standardmarke 
  }{% sonst Fachbezogene Standardmarke
      %%% ??? Noch anpassen
   \sbox{\aufgabenmarke}{\bfseries T} %^^A Standardmarke dazu
  }
}



%% Standard-Settings
\AtBeginDocument{
  \DocType{Bearbeitungsmodus}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0.25mm}
  \lhead{%
     \begin{picture}(0,0)(0,15)   
        \ifthenelse{\value{frame}=0}{}{\arbeitsblattrahmenpic}%
     \end{picture}
     \bf \schooluse{}%
  }
  \chead{\bfseries \titelouse{} \titeluuse{}}
  \rhead{\bfseries \doctypeuse{}: \usertokenuse{}}
  \lfoot{\revisionuse{}}
  \cfoot{Seite \thepage /\pageref{VeryLastPage}}
  \rfoot{\ausdruckuse{}}
}

%% this shold be done with every option (To check ???????)
\AtBeginDocument{
   %% load personal Settings
   \InputIfFileExists{$HOME/.problectix/.problectix.tex}%
                     {\typeout{Loading .problectix.tex}}%
                     {\typeout{Not Found: .problectix.tex}}
}%$


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Optionen, die die Documentclass teacher haben soll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% Folgende Optionen sind nicht zulaessig, die gibts aber in 'article'
\DeclareOption{a5paper}
    {\ClassError{proc}{Option `a5paper' nicht unterstuetzt}{}}
\DeclareOption{b5paper}
{\CdlassError{proc}{Option `b5paper' nicht unterstuetzt}{}}
\DeclareOption{onecolumn}%
    {\ClassError{proc}{Option `onecolumn' nicht unterstuetzt}{}}
\DeclareOption{titlepage}%
    {\ClassError{proc}{Option `titlepage' nicht unterstuetzt}{}}

%% Optionen die an 'article' weitergegeben werden sollen

\PassOptionsToClass{a4paper,11pt,fleqn,oneside}{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% debug=show debug information
\DeclareOption{debug}{%
  \AtEndOfClass{
    \setcounter{debuggen}{1}
  }
}

\DeclareOption{draft}{%
  \AtEndOfClass{
    \setcounter{showdraft}{1}
  }
}


\DeclareOption{sw}{%
%% sw=Use Black and White only (no colours)
\AtBeginDocument{% Set all colours to Black
\definecolor{rot}{gray}{0}    \definecolor{lila}{gray}{0}
\definecolor{rosa}{gray}{0}   \definecolor{gruen}{gray}{0}
\definecolor{blau}{gray}{0}   \definecolor{hellgrau}{gray}{0}
\definecolor{dunkelgrau}{gray}{0}
}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% arial=Schriften in sans-serif ausgeben (Sieht aus wie Word-arial)
\DeclareOption{arial}{%
\setcounter{arial}{1}%
}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% frame=show a frame around the sheet
\DeclareOption{frame}{%
\setcounter{frame}{1}%
}%
\DeclareOption{rahmen}{%
\setcounter{frame}{1}%
}%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{ka}%
{%
%% ka= Erzeuge Klassenarbeit zusammen mit bszleo, ...
%% Alles wird als 1 Fach zusammengezählt
\AtEndOfClass{%% 
              \setcounter{formatierung}{3}     
              \Titelo{\doctypeuse{}}
             }%% ab 1.Seite
  \AtBeginDocument{%
     \Fehler{\bf Punkte:} 
     \DocType{Klassenarbeit}
     \InputIfFileExists{ka-format.tex}{}{Datei ka-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
     \input{_ka-1fach-ende}%
     }% Ende atenddocument
}%
%%%%%ENDE OPTION KA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{exam}%
{%
%% exam= Erzeuge Prüfung
%% Alles wird als 1 Fach zusammengezählt
\AtEndOfClass{%% 
              \setcounter{formatierung}{3}
              \Titelo{\doctypeuse{}}
             }%% ab 1.Seite
  \AtBeginDocument{%
     \Fehler{\bf Punkte:} 
     \DocType{Prüfung}
     \InputIfFileExists{exam-format.tex}{}{Datei exam-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
        % nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION exam %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{arb}%
{%
%% arb= Erzeuge Arbeitsblatt
%% Alles wird als 1 Fach zusammengezählt
\AtEndOfClass{%% 
              \setcounter{formatierung}{3}
              \Titelo{\doctypeuse{}}
             }%% ab 1.Seite
  \AtBeginDocument{%
     %\Fehler{\bf Punkte:} 
     \DocType{Arbeitsblatt}
     \InputIfFileExists{arb-format.tex}{}{Datei arb-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
        % nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION arb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{notenliste}%
%% notenliste = Erzeuge Liste mit Punkten-Noten
{%
\AtEndOfClass{%%
              \setcounter{notenliste}{1}%%
             }%% ab 1.Seite
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{kamulti}%
%% kamulti = Erzeuge Klassenarbeit mit bszleo, ... 
%% Fächer getrennt aufsummieren und benoten
{%
\AtEndOfClass{%% Satzspiegel für zweite Seite ausgelegt,erste Seite mit \vspace
              \setcounter{formatierung}{3}
              \Titelo{\doctypeuse{}}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \DocType{Klassenarbeit}
     \Fehler{\bf Punkte:}
     \InputIfFileExists{kamulti-format.tex}{}{Datei kamulti-format.tex nicht geladen!}
%     \setcounter{fachangabepzk}{1}% bei kamulti müssen Fächer genannt werden
%%     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
     \input{_ka-multi-ende}%
     }% Ende atenddocument
}%
%%%%%%%%%%%%% ENDE OPTION kamulti %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{col}% War frueher arb
%% col= Erzeuge Aufgabensammlung
{%
\AtEndOfClass{%% Satzspiegel für zweite Seite ausgelegt,erste Seite mit \vspace
              %%\setlength{\textheight}{250mm}% war 262mm
              %%\setlength{\footskip}{7.5mm}%
              %%\setlength{\headsep}{5mm}%
              %%\setlength{\headheight}{20mm}% war 8mm
              %%\setcounter{formatierung}{3}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \DocType{Arbeitsblatt}
     \InputIfFileExists{col-format.tex}{}{Datei col-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% 
     %% nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION COL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ????? EXPERIMENTELL ????? 
%% gnulinux= Erzeuge Blatt mit Gnukopf und Pinguin
\DeclareOption{gnulinux}%
{%
\AtEndOfClass{%% Satzspiegel für zweite Seite ausgelegt,erste Seite mit \vspace
              \setlength{\textheight}{250mm}% war 262mm
              \setlength{\footskip}{7.5mm}%
              \setlength{\headsep}{5mm}%
              \setlength{\headheight}{20mm}% war 8mm
              \setcounter{formatierung}{3}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \Fehler{\bf Punkte:}
     \pagestyle{fancy}
     %% Kopfzeilen einstellen >
     \lhead{% Beginn Bild in der Kopfzeile
       \begin{picture}(0,20)(0,2)   
         \arbeitsblattpic  %% Grundkopf zeichnen
         %%\namensbereichpic %% Namenunterteilung zeichnen
         %%\kazusatzpic %% Zusätzliche Felder für Klassenarbeit
         \arbeitsblattrahmenpic %% Rahmen
       \end{picture}
     }% Ende Bild in der Kopfzeile
     %% Text zu Linux-Grafiken einfügen
     \chead{\hspace{125mm}
            \raisebox{9mm}{GNU/Linux} \hspace{-19.5mm}
            \raisebox{4mm}{am BSZ}\hspace{4mm} 
           } 
     %% GNU-LINUX- Grafiken einfügen
     \rhead{\raisebox{-1.8mm}{\includegraphics[height=19.5mm]{gnuhead}}\hspace{16.5mm}
            \raisebox{-1.7mm}{\includegraphics[height=19.5mm]{tux}}\hspace{-3.5mm}
           }
     \lfoot{\revisionuse{}} 
     \cfoot{} %% \cfoot{Seite \thepage}

     \InputIfFileExists{arb-format.tex}{}{Datei arb-format.tex nicht geladen!}
     \renewcommand{\headrulewidth}{0mm}%
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% 
     %% nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION GNULINUX %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% lsg = Erzeuge Lösungsblatt für die Klassenarbeit
\DeclareOption{lsg}%
{%
\AtEndOfClass{%
       \setcounter{loesungen}{1}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \DocType{Lösungen}
     \lfoot{\revisionuse{}
            \ifthenelse{\value{klasseangegeben}=0}% wenn keine Klasse angegeben
              {}% Dann nichts machen
              {--- Klasse \klasseuse{}}% sonst Klasse angeben
           }
     \InputIfFileExists{lsg-format.tex}{}{Datei lsg-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
       \vfill%
       \begin{center}
           {\scriptsize --- Ende des Lösungsblatts ---}
       \end{center}
     }% Ende atenddocument
}%
%%%%%ENDE OPTION LSG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% slsg = Erzeuge Lösungsblatt für die Klassenarbeit
\DeclareOption{slsg}%
{%
\AtEndOfClass{%
       \setcounter{loesungen}{1}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \DocType{Lösungen}
     \lfoot{\revisionuse{}
            \ifthenelse{\value{klasseangegeben}=0}% wenn keine Klasse angegeben
              {}% Dann nichts machen
              {--- Klasse \klasseuse{}}% sonst Klasse angeben
           }
     \InputIfFileExists{slsg-format.tex}{}{Datei slsg-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
       \vfill%
       \begin{center}
           {\scriptsize --- Ende des Lösungsblatts ---}
       \end{center}
     }% Ende atenddocument
}%
%%%%%ENDE OPTION SLSG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% arblsg = Lösungen in Arbeitsblättern zeigen
\DeclareOption{arblsg}%
{%
\AtEndOfClass{%
     \InputIfFileExists{arblsg-format.tex}{}{Datei arblsg-format.tex nicht geladen!}
% this input-file includes the following:
%       %% Farbe auf grün setzten
%       \definecolor{arblsgcolor}{rgb}{0,0.5,0}
%       \definecolor{arblsgmustercolor}{rgb}{0.6,0.1,0.7}
%       \setcounter{arblsg}{1}
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
     }% Ende atenddocument
}%
%%%%%ENDE OPTION ARBLSG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{empty}%
%% leere option= keine Header, Footer
{%
\AtEndOfClass{%% Satzspiegel für zweite Seite ausgelegt,erste Seite mit \vspace
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
\pagestyle{empty}
     %% Kopfzeilen einstellen >
     \lhead{}
     \chead{}
     \rhead{}
     \lfoot{}
     \cfoot{}
     \rfoot{}
     %%
     }% Ende atbegindocument
  \AtEndDocument%
     {% 
     %% nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION EMPTY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%%%%% BEGIN OPTION STOFF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{stoff}%
%% stoff = Erstellen von Stoffverteilungsplänen
{
\AtEndOfClass{             
    }%% 
\AtBeginDocument%
     {%
     \chead{\bf Stoffverteilungsplan}
     \rhead{\bf \klasseuse{}: \usertokenuse{}}
     %% Spezielle Befehle für Stoffverteilungsplan
     \newcounter{stundennummer}
     \setcounter{stundennummer}{1}
     \newcounter{mathestunden}
     \newcounter{technologiestunden}
     \newcounter{arbeitsplanungstunden}
     %% Eintrag in den Stoffverteilungsplan
     \newsavebox{\stoffstundendatum}
     \savebox{\stoffstundendatum}{\ldots}

     \newenvironment{stoff}
     {% begin begin
         \begin{longtable}{|c|c|p{22mm}|p{105mm}|p{11mm}|} \hline 
         %\caption*{\usebox{\titelo} \\ 
         %\usebox{\klasse}} \\ \hline
         %\endfirsthead
         \rule[-3mm]{0mm}{9mm}\textbf{Nr.} &%
                             \textbf{Fach} &%
                            \textbf{Datum} &%
                \textbf{Unterrichtsthema}  &%
                \textbf{LP}\\ 
         \hline \hline 
         \endhead
     }% end begin
     {% begin end
         \end{longtable}
         \vspace{-2.5ex}
         \footnotesize \hspace{6mm}
         Technologie-Stunden im Block: \thetechnologiestunden \hspace{4mm}
         Mathe-Stunden im Block: \themathestunden \hspace{4mm}
         Arbeitsplanung-Stunden im Block: \thearbeitsplanungstunden 
         \vspace{1ex}
         \setcounter{mathestunden}{0}
         \setcounter{technologiestunden}{0}
         \setcounter{arbeitsplanungstunden}{0}
      }% end end

      \newcommand{\stunde}[6][jo]{%
         %% Datum in savebox speichern
         %%\savebox{\stoffstundendatum}{#3}%%
         %% Erste Spalte
         \rule[-2mm]{0mm}{7mm} \textbf{\thestundennummer} &
         %% Zweite Spalte 
         #2 & 
         %% Dritte Spalte
         %% wenn Datumsfeld leer ist, dann Vorgänger übernehmen
         \ifthenelse{\equal{#3}{}}{\ldots}{#3} &
         %% Vierte Spalte
         #4 \newline \small{#5} \addtocounter{stundennummer}{1}
         \ifthenelse{\equal{#2}{T}}{\addtocounter{technologiestunden}{1}}{}
         \ifthenelse{\equal{#2}{M}}{\addtocounter{mathestunden}{1}}{}
         \ifthenelse{\equal{#2}{AP}}{\addtocounter{arbeitsplanungstunden}{1}}{}
         & \small{#6} \\ \hline
         }
      %% Zwischenüberschrift erzeugen     
      \newcommand{\thema}[2][]{%
         &&&\rule[-1.5mm]{0mm}{6mm} \bf #2 &\\ \hline
         }

      %% Seitentitel erzeugen
      \newcommand{\titel}%
         {%
         \begin{center}
            {\Large \bf Stoffverteilungsplan --- Klasse \klasseuse{}}
         \end{center}
         }

      %% Blockende Markieren innerhalb von der Umgebung stoff
      \newcommand{\block}{
         \end{stoff}
         \begin{stoff}
      }

      \newcommand{\ka}{
         \stunde{KA}{}{KA-Wiederholung}{}{}
         \stunde{KA}{}{KA-Mathe}{}{}
         \stunde{KA}{}{KA-Technologie}{}{}
         \stunde{KA}{}{KA-Besprechung}{}{}
      }

      }
  \AtEndDocument%
     {%
     }% Ende atenddocument
}%
%%%%% ENDE OPTION STOFF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% Alle anderen Optionen:
\newcommand\inputOptionFile[1]{%
   \typeout{Loading file #1.tex.}%
   \input{#1.tex}%
}

\DeclareOption*{%
  %% Load AtEndOfClass - aeoc
  \IfFileExists{\CurrentOption-aeoc.tex}
  {\expandafter\AtEndOfClass\expandafter{%
    \expandafter\inputOptionFile\expandafter{\CurrentOption-aeoc}}
  }%
  {%
   \PackageWarningNoLine{teacher}{Option ignored: \CurrentOption}
   \OptionNotUsed}
  %% Load AtBeginDocument - abd
  \IfFileExists{\CurrentOption-abd.tex}
  {\expandafter\AtBeginDocument\expandafter{%
    \expandafter\inputOptionFile\expandafter{\CurrentOption-abd}}
  }%
  {%
   \PackageWarningNoLine{teacher}{Option ignored: \CurrentOption}
   \OptionNotUsed}
  %% Load AtEndDocument - aed
  \IfFileExists{\CurrentOption-aed.tex}
  {\expandafter\AtEndDocument\expandafter{%
    \expandafter\inputOptionFile\expandafter{\CurrentOption-aed}}
  }%
  {%
   \PackageWarningNoLine{teacher}{Option ignored: \CurrentOption}
   \OptionNotUsed}
}


\ProcessOptions
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hauptteil

%% Initialisierungsteil: Reservierungsanforderungen >
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Seiteneinstellungen
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\setlength{\textwidth}{175mm}
%%\setlength{\textheight}{250mm}%% anpassen
\setlength{\voffset}{-25.4mm}
\setlength{\hoffset}{-25.4mm}
\setlength{\topmargin}{4mm} 
%\setlength{\headheight}{20mm} %% anpassen
\setlength{\headsep}{5mm}
\setlength{\oddsidemargin}{20mm}
\setlength{\evensidemargin}{20mm}
\setlength{\topskip}{0mm}
%%\setlength{\footskip}{7.5mm}%%
%% Randnotizen auf linker Seite anzeigen lassen (mehr Platz)
\reversemarginpar
\setlength{\marginparwidth}{10mm}
\setlength{\marginparsep}{4mm}

\newcounter{formatierung}
%% Um zu prüfen, welcher Formatierungsbefehl gegeben wurde
%% \leer       = 0
%% \arbrahmen  = 1
%% \arb        = 2
%% \kaarb      = 3



\input{rahmenhilfsbefehle}%% Befehle fuer die Rahmen laden 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Beginn VORLAGE \leer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\leer}[1][]{%
\setcounter{formatierung}{0}
\pagestyle{fancy}
\lhead{}

\ifthenelse{\equal{#1}{titel}}% wenn
   {\chead{\fbox{\titelouse{} {\bf---} \titeluuse{}}}}% dann
   {\chead{}}% sonst
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}
}% Ende der Definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ende VORLAGE \leer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Behehl, der von laspage.sty kopiert wurde und in
%% verylastpage umbenannt wurde
%% LastPage: Ende Hauptteil
%% Very/LastPage: Ende von allem
\def\verylastpage@putlabel{\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string
   \newlabel{VeryLastPage}{{}{\thepage}}}%
   \addtocounter{page}{1}}
\AtEndDocument{%
   \message{AED: verylastpage setting VeryLastPage}%
   \clearpage\verylastpage@putlabel}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Alpha-Stadium
%% Befehle für Arbeitsblätter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% neue Seite mit neuem Arbeitsblatt 
\newcommand{\newarb}[2][]{\newpage \Titelu{#2}\input{bszleo-abd}}

%% engere Section-Befehle
\newcommand{\arbsection}[2][]{\vspace{3.5mm plus1mm}%
                              {\Large \bfseries #2}%
                               \vspace{1.5mm plus1mm}}

\newcommand{\arbsubsection}[2][]{\vspace{3mm plus1mm}%
                              {\large \bfseries #2}%
                               \vspace{1.25mm plus1mm}}

\newcommand{\arbsubsubsection}[2][]{\vspace{2.5mm plus1mm}%
                              {\bfseries #2}%
                               \vspace{0.75mm plus1mm}}

%% Loesungen in Arbeitsblaettern
\newcommand{\arblsg}[2][]{
\textcolor{arblsgcolor}{#2}
}

%% Versuche in Arbeitsblaettern
\newcommand{\versuch}[2][]{
\stepcounter{versuch}
\setlength{\fboxsep}{2mm}%
\framebox{\bfseries Versuch \theversuch: #2} \par \bigskip%
% Latex-Standard herstellen
\setlength{\fboxsep}{4pt}%
\setlength{\fboxrule}{0.4pt}
}

%% Formeln in Arbeitsblaettern
\newcommand{\linksformel}[3][]{%
\par \vspace{3mm plus 2mm}
\begin{minipage}[c]{#3mm}
\begin{center}
    \setlength{\fboxsep}{1.5mm}%
    \setlength{\fboxrule}{0.35mm}
    \fbox{\parbox{#3mm-10mm}{
       \begin{equation*}
           #2
       \end{equation*}
    }}
\end{center}
\end{minipage}
\begin{minipage}[c]{\textwidth-#3mm}
  #1
\end{minipage}
\vspace{1mm plus 2mm} \par
% Latex-Standard herstellen
\setlength{\fboxsep}{4pt}%
\setlength{\fboxrule}{0.4pt}
}

%% Auf Lueckentext-Baselineskip umstellen
\newcommand{\lue}{%
   \setlength{\baselineskip}{8mm}
   %\setlength{\parskip}{2mm}
}

\newcommand{\anhang}[3][]{%
   %% counting the references in the main material
   \stepcounter{mainpage}%
   (siehe Anhang \Alph{mainpage})%
   \AtEndDocument{%
      \stepcounter{apppage}
      \addtocontents{toc}{Anhang \Alph{apppage}: \, #2 \dotfill Seite \thepage \par}
      %% show this
      %%\lhead{}
      %%\chead{\bfseries Anhang \Alph{apppage}}
      %%\rhead{}
      \lfoot{\textbf{Anhang \Alph{apppage}:} #2}
      %%\cfoot{Seite \thepage}
      %%\rfoot{}
      \vspace*{\fill}
      %% dirty hack to keep the graphic on one page, when textheight 
      \enlargethispage{6mm}
      \vspace{-3mm}
      %% dirty hack end
      \begin{center}
      \ifthenelse{\equal{#1}{}}{
          \includegraphics
            [width=\textwidth,height=\textheight,keepaspectratio]{#3}
      }{\includegraphics[#1]{#3}}
      \end{center}
      \vspace*{\fill}
      \clearpage
      \AtEndDocument{% von lastpage.sty angepasst an verylastpage
      \message{AED: command anhang is setting a label for verylastpage}%
      \clearpage\verylastpage@putlabel}%
   }%
}


\newcommand{\examfach}[2][]{

\clearpage

\shadowbox{{\Large \bfseries #2}}

\addtocontents{toc}{#2 \dotfill Seite \thepage \\[0mm] }

\bigskip

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Beginn VORLAGE \arbrahmen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\arbrahmen}[1][]{%
\setcounter{formatierung}{1}
\setlength{\footskip}{8.5mm}% geg. \arb 1mm größer
\pagestyle{fancy}
%% Kopfzeilen einstellen >
\lhead{% Beginn Bild in der Kopfzeile
   \begin{picture}(0,20)(0,2)   
      \arbeitsblattpic  %% Grundkopf zeichnen
      \namensbereichpic %% Namenunterteilung zeichnen
      \arbeitsblattrahmenpic %% Rahmen um alles
   \end{picture}
}% Ende Bild in der Kopfzeile
\chead{}
%% \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein >
\ifthenelse{\equal{#1}{nt}}{%
   \rhead{\raisebox{1.5mm}{\bf \thepage /\pageref{VeryLastPage}\hspace{2.2mm}}}}{\rhead{}}
%% < \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein 
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}}{%
    \cfoot{\thepage /\pageref{VeryLastPage}}}{\cfoot{}}
%% < Zusatzparameter [nb] schaltet Fuss-Nummerierung ein 
\rfoot{}
%% < Kopfzeilen einstellen
}% Ende der Definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ende VORLAGE \arbrahmen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Beginn VORLAGE \arb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\arb}[1][]{%
\setcounter{formatierung}{2}
\setlength{\footskip}{7.5mm}%%
\pagestyle{fancy}
%% Kopfzeilen einstellen >
\lhead{% Beginn Bild in der Kopfzeile
   \input{rahmen-u1}
}% Ende Bild in der Kopfzeile
\chead{}
%% Zusatzparameter [nt] schaltet Kopf-Nummerierung ein >
  \ifthenelse{\equal{#1}{nt}}{%
    \rhead{\raisebox{14.3mm}{\scriptsize Seite \thepage /\pageref{VeryLastPage}}}}{\rhead{}}
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}}{%
    \cfoot{\thepage /\pageref{VeryLastPage}}}{\cfoot{}}
\rfoot{}
}% Ende der Definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ende VORLAGE \arb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Beginn VORLAGE \kaarb === [ka]option in Teacher
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\kaarb}[1][]{%
\setcounter{formatierung}{3}
\Titelo{Klassenarbeit}

%% Satzspiegel ist für zweite Seite ausgelegt, auf erster Seite wird ein \vspace
%% eingefügt: siehe \AtBeginDocument, weiter unten >
%%\setlength{\headsep}{17mm}% 12mm mehr für Zusatzfelder
\setlength{\headsep}{5mm}
%%\setlength{\textheight}{238mm}% 12mm weniger wegen Zusatzfelder
\setlength{\textheight}{262mm}
\setlength{\headheight}{8mm}
\setlength{\footskip}{7.5mm}
\pagestyle{fancy}
%% Kopfzeilen einstellen >
\lhead{% Beginn Bild in der Kopfzeile
\begin{picture}(0,20)(0,2)   
  \arbeitsblattpic  %% Grundkopf zeichnen
  \namensbereichpic %% Namenunterteilung zeichnen
  \ifthenelse{\equal{#1}{verbesserung}% 
          \or \equal{#1}{verbesserungnt}% 
          \or \equal{#1}{verbesserungnb}}%
     {\kaverbesserungpic} %% Zusätzliche Verbesserungsfelder
     {\kazusatzpic} %% Zusätzliche Felder für Klassenarbeit
\end{picture}
}% Ende Bild in der Kopfzeile
\chead{}
%% \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein >
  \ifthenelse{\equal{#1}{nt}%
          \or \equal{#1}{verbesserungnt}}{%
    \rhead{\raisebox{1.5mm}{\bf \thepage /\pageref{VeryLastPage}\hspace{2.2mm}}}}{\rhead{}}
%% < \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein 
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}%
          \or \equal{#1}{verbesserungnb}}{%
    \cfoot{Seite \thepage / \pageref{VeryLastPage}}}{\cfoot{}}
%% < Zusatzparameter [nb] schaltet Fuss-Nummerierung ein 
\rfoot{}
%% Ab der zweiten Seite wird Rahmen geändert >
\afterpage{%
%% Zusätzlicher Platz muss entfernt werden
\renewcommand{\headrulewidth}{1mm}
\lhead{\rule[-2mm]{\textwidth}{0.25mm}%
\hspace{-\textwidth}%
\bf Berufliches Schulzentrum Leonberg}
\chead{}
\rhead{\bf Klassenarbeit}
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}%
          \or \equal{#1}{verbesserungnb}}{%
    \cfoot{Seite \thepage /\pageref{VeryLastpage}}}{\cfoot{}}
%% < Zusatzparameter [nb] schaltet Fuss-Nummerierung ein 
\rfoot{}
}
}% Ende der Definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ende VORLAGE \kaarb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Allgemeine Einstellungen 
\newlength{\loesungslinienbreitekariert}
\setlength{\loesungslinienbreitekariert}{0.06mm}
\newlength{\loesungslinienabstand}
\setlength{\loesungslinienabstand}{10mm}
% Leangeneinheit fuer 'pictures'
\setlength{\unitlength}{1mm}
\setlength{\parindent}{0mm}
%%\setlength{\parskip}{10mm}
\renewcommand{\baselinestretch}{1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Folgende Einstellungen werden mit Anfang des Dokuments ausgeführt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
%%\renewcommand{\headrulewidth}{0mm}
%% Um bei Multiple-Choice-Aufzählungen gleichmässiges Verteilen zu ermöglichen
%% wir dieser stark variable Abstand benutzt >
\setlength{\multicolbaselineskip}{0pt plus10pt}
%% Falls \kaarb, dann xmm Platz lassen
%% folgender vspace wurde in die optionen integriert
%%\ifthenelse{\value{formatierung}=3}{\vspace*{23mm}}{}
%% itemize-Umgebung neu definieren
%%% ???? Zum Testen
\renewenvironment{itemize}% mit engeren Abständen definieren
{% \begin Begin
\begin{list}%
{$\bullet$}% Standardmarke
{\setlength{\parsep}{-0.4ex plus1ex}% Listenerklärung
\setlength{\topsep}{1.3ex plus0.5ex}}
}% \begin End
{\end{list}}% \end
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Laden von Zusatzfiles >
%% Packages >
\RequirePackage{ifthen}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{textcomp}
\RequirePackage{afterpage}
\RequirePackage{lscape}
\RequirePackage{calc}
\RequirePackage[T1]{fontenc}
\RequirePackage[latin1]{inputenc}
\RequirePackage{ngerman}
\RequirePackage{fancybox}
\RequirePackage{marvosym}
%%\RequirePackage{fancyhdr}
\RequirePackage[dvips]{color}
\RequirePackage{moreverb}

% ams-Befehl square ab jetzt nutzlos, da \square von SIunits neu definiert wird
\RequirePackage[cdot,amssymb,thickqspace]{SIunits} 
%%\RequirePackage{comment}
%% Erstes eigenes Paket: Befehle für Arbeitsblätter
\RequirePackage{teacherpack}
%% Zweites eigenes Paket: Befehle um KA's zu erzeugen.
%% teacherpack muss geladen sein
\RequirePackage{kapack}
%% Für die Stoffverteilungspläne: mehrseitige Tabellen
\RequirePackage{amsmath}
\RequirePackage{longtable}
\RequirePackage{dcolumn}
%% Zum ersetzen von Tags in xfig-PS-output, ...
\RequirePackage{psfrag}
%% Fuer den xspace-Befehl
\RequirePackage{xspace}
%% Fuer die Angabe der Gesamtseiten vor der letzten Seite
\RequirePackage{lastpage}
%% Auswerten von RCS-Feldern
\RequirePackage{rcs}
%Leeres Feld setzen
\RCS $Revision\RcsEmptyValue$
%% Saving the rcsversion at the beginning of the document
\AtBeginDocument{
\edef\RCSMaster{\RCSRevision}
}
%% wieder leeren 
\RCS $Revision\RcsEmptyValue$
%% Enwurf im Hintergrund drucken
\RequirePackage[german,timestamp,dark]{draftcopy}
\draftcopyFirstPage{10000}%% Beginnen mit draft ab Seite 1000...


%% \renewcommandtwoopt{\lll}[3][none][c]{%
%% %%Länge: #1, Format: #2, Text: #3
%%    % 2mm abhängig von texthoehe definieren ???
%%    \ifthenelse{\equal{#1}{v}}%
%%    {\setlength{\ruecklaengezwei}{-22mm}\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \ifthenelse{\equal{#2}{l}}{\hspace{-18mm}%
%%      \makebox[18mm][l]{\arblsg{\Large\sffamily{\slshape#3}}}}{\makebox{}}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}%
%%    \ifthenelse{\equal{#2}{c} \or \equal{#2}{s}}{\hspace{-18mm}%
%%      \makebox[18mm][c]{\arblsg{\Large\sffamily{\slshape#3}}}}{}%
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
%%    \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}%
%%    \ifthenelse{\equal{#2}{r}}{\hspace{-18mm}%
%%      \makebox[18mm][r]{\arblsg{\Large\sffamily{\slshape#3}}}}{}%
%%    }{%
%%    \ifthenelse{\equal{#1}{none}}{\settowidth{\llllaenge}{o#3#3o}}{%
%%       \ifthenelse{\equal{#1}{lw}}{\setlength{\llllaenge}{\textwidth}}%
%%       {\setlength{\llllaenge}{#1mm}}%
%%    }%
%%    \rule[-1mm]{\llllaenge}{\loesungslinienbreite}%
%%    \hspace{-\llllaenge}\makebox[\llllaenge][#2]{\arblsg{\Large\sffamily{\slshape#3}}}%
%%    }%
%% }

%%%%% ALPHA
\renewcommandtwoopt{\lll}[3][none][c]{%
%%Länge: #1, Format: #2, Text: #3
 % alt: \put(0,-3.3)...
 % 2mm abhängig von texthoehe definieren ???
 \setlength{\fboxsep}{0mm}%
 \ifthenelse{\equal{#1}{v}}% variable Länge
   {\setlength{\ruecklaengezwei}{-22mm}\rule[-1mm]{18mm}{\loesungslinienbreite}
   \ifthenelse{\equal{#2}{l}}{\hspace{-20mm}%
     \begin{picture}(18,6)%
        \ifthenelse{\value{arblsg}=1}{
         \put(0,-2.3){\makebox(18,5)[bl]{%
           \arblsg{\rule[-3mm]{0mm}{5mm}\large\sffamily{\slshape#3}}}}%
        }{%
         \put(0,-2.3){\makebox(18,5)[bl]{}}%
        }
     \end{picture}%
   }{}%
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}%
   \ifthenelse{\equal{#2}{c} \or \equal{#2}{s}}{\hspace{-18mm}%
     %\makebox[18mm][c]{\arblsg{\large\sffamily{\slshape#3}}}%}{}%
     \begin{picture}(18,6)%
        \ifthenelse{\value{arblsg}=1}{
        \put(0,-2.3){\makebox(18,5)[bc]{%
           \arblsg{\rule[-3mm]{0mm}{5mm}\large\sffamily{\slshape#3}}}}%
        }{%
         \put(0,-2.3){\makebox(18,5)[bc]{}}%
        }
     \end{picture}%
    }{}%
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}
   \hspace{\ruecklaengezwei}\hfill\rule[-1mm]{18mm}{\loesungslinienbreite}%
   \ifthenelse{\equal{#2}{r}}{\hspace{-18mm}%
     %\makebox[18mm][r]{\arblsg{\large\sffamily{\slshape#3}}}%}{}%
     \begin{picture}(18,6)%
        \ifthenelse{\value{arblsg}=1}{
        \put(0,-2.3){\makebox(18,5)[br]{%
           \arblsg{\rule[-3mm]{0mm}{5mm}\large\sffamily{\slshape#3}}}}%
        }{%
         \put(0,-2.3){\makebox(18,5)[br]{}}%
        }
     \end{picture}%
    }{}%
 }{% nicht variable Länge
   \ifthenelse{\equal{#1}{none}}{\settowidth{\llllaenge}{o#3#3o}}{%
      \ifthenelse{\equal{#1}{lw}}{\setlength{\llllaenge}{\textwidth}}%
      {\setlength{\llllaenge}{#1mm}}%
   } \hspace{-1.2ex} % mit Korrekturversuch
%   } % ohne Korrektur des Raums vor der lll
   \setlength{\fboxsep}{0mm}%
   \makebox[\llllaenge][#2]{% inhalt: Linie und Text
   \rule[-1mm]{\llllaenge}{\loesungslinienbreite}%
   \hspace{-\llllaenge}%
   %\makebox[\llllaenge][#2]{\arblsg{\large\sffamily{\slshape#3}}}%
   \makebox[\llllaenge][#2]{%
     \begin{picture}(5,6)% (egal,Platz schaffen )
        \put(0,-2.3){\makebox(5,5)[b#2]{%
           \arblsg{\rule[-3mm]{0mm}{5mm}\large\sffamily{\slshape#3}}}}
     \end{picture}%
   }% makebox
   }% mbox
   }%
}
%%%%%%%%%%% ALPHA





\newcommandtwoopt{\lllnumbered}[3][none][c]{%
   \stepcounter{lllnumber}%
   % Länge des Lueckenwortes ermitteln
   \settowidth{\llllaenge}{#3}
   % aufaddieren alle Lueckenworte
   \addtolength{\lllsumme}{\llllaenge}%
   \lll[#1][#2]{#3}\hspace{-0.5ex} \nolinebreak%
   \raisebox{-1.6mm}{\scriptsize(\alph{lllnumber})}%
   \ifthenelse{\value{lllnumber}=1}{\renewcommand{\lllause}{#3}}{}%
   \ifthenelse{\value{lllnumber}=2}{\renewcommand{\lllbuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=3}{\renewcommand{\lllcuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=4}{\renewcommand{\lllduse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=5}{\renewcommand{\llleuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=6}{\renewcommand{\lllfuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=7}{\renewcommand{\lllguse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=8}{\renewcommand{\lllhuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=9}{\renewcommand{\llliuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=10}{\renewcommand{\llljuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=11}{\renewcommand{\lllkuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=12}{\renewcommand{\lllluse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=13}{\renewcommand{\lllmuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=14}{\renewcommand{\lllnuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=15}{\renewcommand{\lllouse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=16}{\renewcommand{\lllpuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=17}{\renewcommand{\lllquse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=18}{\renewcommand{\lllruse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=19}{\renewcommand{\lllsuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=20}{\renewcommand{\llltuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=21}{\renewcommand{\llluuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=22}{\renewcommand{\lllvuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=23}{\renewcommand{\lllwuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=24}{\renewcommand{\lllxuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=25}{\renewcommand{\lllyuse}{#3}}{}%
   \ifthenelse{\value{lllnumber}=26}{\renewcommand{\lllzuse}{#3}}{}%
}



\newcommand{\lllsep}[1]{%% Beginn \lllsep
\ifthenelse{\equal{#1}{}}%% Bedingung
{}%% Bei leerem Wort nix tun
{\settowidth{\llllaenge}{#1}%% Wort gefunden
 \addtolength{\llltmpsumme}{\llllaenge}%
     \ifthenelse{\lengthtest{\llltmpsumme<\lllzeilensumme}}%
       %% wenn noch platz
          {\ifthenelse{\lengthtest{\llllaenge=\llltmpsumme}}%% wenn erstes wort
          {#1}%% Dann ohne \hfill, da allererstes Hilfe-Wort
          {\hfill #1}%% Sonst mit \hfill
       }%% Dann Wort setzen, da Wort noch passst
     {\hfill #1 \\ \setlength{\llltmpsumme}{0mm}}%% Sonst mit \newline
}% Sonst
}%% Ende \lllsep




\newcommand{\lllliste}[1][1]{%
  % wieviele zeilen notwendig um Lueckenworter zu setzten?
  \setlength{\fboxrule}{0.35mm} \setlength{\fboxsep}{8pt}
  \setcounter{lllzeilen}{1}
  \setlength{\lllzeilensumme}{\lllsumme}
  \setlength{\llltmpsumme}{0mm}% 
   \whiledo%
     {\lengthtest{\lllzeilensumme > 0.5\linewidth}}% Test: passts in 1 zeile?
     {% Zeilenzahl erhoehen
      \addtocounter{lllzeilen}{1}
      \setlength{\lllzeilensumme}{\lllsumme/\value{lllzeilen}}
   }% : Schleife
  %% 
  \begin{center}
   \fbox{\begin{minipage}[t]{\linewidth-10mm}%
       \ifthenelse{\equal{#1}{0}}{
          %% BEGINN Anordnung Version 0 (richtige Reihenfolge)
          \lllsep{\lllause}\lllsep{\lllbuse}\lllsep{\lllcuse}%
          \lllsep{\lllduse}\lllsep{\llleuse}\lllsep{\lllfuse}%
          \lllsep{\lllguse}\lllsep{\lllhuse}\lllsep{\llliuse}%
          \lllsep{\llljuse}\lllsep{\lllkuse}\lllsep{\lllkuse}%
          \lllsep{\lllmuse}\lllsep{\lllnuse}\lllsep{\lllouse}%
          \lllsep{\lllpuse}\lllsep{\lllquse}\lllsep{\lllruse}%
          \lllsep{\lllsuse}\lllsep{\llltuse}\lllsep{\llluuse}%
          \lllsep{\lllvuse}\lllsep{\lllwuse}\lllsep{\lllxuse}%
          \lllsep{\lllyuse}\lllsep{\lllzuse}
          %% ENDE Anordnung Version 0 (richtige Reihenfolge)
       }{}
       \ifthenelse{\equal{#1}{1}}{
          %% BEGINN Anordnung Version 1 (Durcheinander)
          \lllsep{\lllsuse}\lllsep{\lllkuse}\lllsep{\lllfuse}%
          \lllsep{\llltuse}\lllsep{\lllmuse}\lllsep{\lllcuse}%
          \lllsep{\lllguse}\lllsep{\lllhuse}\lllsep{\lllpuse}%
          \lllsep{\llljuse}\lllsep{\lllkuse}\lllsep{\lllbuse}%
          \lllsep{\llleuse}\lllsep{\lllnuse}\lllsep{\lllouse}%
          \lllsep{\llliuse}\lllsep{\lllzuse}\lllsep{\lllxuse}%
          \lllsep{\lllause}\lllsep{\lllduse}\lllsep{\llluuse}%
          \lllsep{\lllvuse}\lllsep{\lllwuse}\lllsep{\lllruse}%
          \lllsep{\lllyuse}\lllsep{\lllquse}
          %% ENDE Anordnung Version 1 (Durcheinander)
       }{}
       \ifthenelse{\equal{#1}{2}}{
          %% BEGINN Anordnung Version 1 (Durcheinander)
          \lllsep{\lllvuse}\lllsep{\lllduse}\lllsep{\lllfuse}%
          \lllsep{\lllguse}\lllsep{\lllmuse}\lllsep{\lllpuse}%
          \lllsep{\llltuse}\lllsep{\lllhuse}\lllsep{\lllcuse}%
          \lllsep{\llljuse}\lllsep{\lllkuse}\lllsep{\lllbuse}%
          \lllsep{\llluuse}\lllsep{\lllnuse}\lllsep{\lllouse}%
          \lllsep{\llliuse}\lllsep{\lllzuse}\lllsep{\lllxuse}%
          \lllsep{\lllause}\lllsep{\lllkuse}\lllsep{\llleuse}%
          \lllsep{\lllsuse}\lllsep{\lllwuse}\lllsep{\lllruse}%
          \lllsep{\lllyuse}\lllsep{\lllquse}
          %% ENDE Anordnung Version 1 (Durcheinander)
       }{}
   \end{minipage}}
   \end{center}
   \vspace{11mm}
  %%
  %% Befehle wieder löschen
  \renewcommand{\lllause}{} \renewcommand{\lllbuse}{} \renewcommand{\lllcuse}{} 
  \renewcommand{\lllduse}{} \renewcommand{\llleuse}{} \renewcommand{\lllfuse}{}
  \renewcommand{\lllguse}{} \renewcommand{\lllhuse}{} \renewcommand{\llliuse}{}
  \renewcommand{\llljuse}{} \renewcommand{\lllkuse}{} \renewcommand{\lllluse}{}
  \renewcommand{\lllmuse}{} \renewcommand{\lllnuse}{} \renewcommand{\lllouse}{} 
  \renewcommand{\lllpuse}{} \renewcommand{\lllquse}{} \renewcommand{\lllruse}{}
  \renewcommand{\lllsuse}{} \renewcommand{\llltuse}{} \renewcommand{\llluuse}{} 
  \renewcommand{\lllvuse}{} \renewcommand{\lllwuse}{} \renewcommand{\lllxuse}{}
  \renewcommand{\lllyuse}{} \renewcommand{\lllzuse}{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% teilaufgabe start
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \renewenvironment{teilaufgabe}[4][nix]{%
%% %BEGINN bei \begin ausgefuehrt: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % 1 restliche Linien der Voraufgabe zeichnen
%% % 2 minipage der Voraufgabe beenden
%% %\ifthenelse{\value{vortext}=1}%
%% %{\begin{minipage}[t]{\aufgabenumbruchbreite}}
%% %{\hspace{3ex}\begin{minipage}[t]{\aufgabenumbruchbreite-3ex}}
%% %% restliche Linien der Voraufgabe zeichnen
%% %\drawrestoflines%
%% %\end{minipage}
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % 3 Zaehler für die neue Aufgabe setzen
%% \setcounter{punktebefehle}{0}   \setcounter{linierung}{0}% 
%% \setcounter{punktetauf}{0}      \setcounter{fachnummer}{0}%
%% \addtocounter{teilaufgabennummerreal}{1}%
%% \ifthenelse{\value{ohneeins}=\value{teilaufgabennummerreal} \or%
%%             \value{ohnezwei}=\value{teilaufgabennummerreal} \or%
%%             \value{ohnedrei}=\value{teilaufgabennummerreal}%
%%            }% Wenn Aufgabe auslassen
%% {}% nix tun, wenn Aufgabe auslassen
%% {% Sonst Aufgabe zeichnen ......
%% %% Pruefen ob bei vorheriger Teilaufgabe keine Loesung angegeben wurde
%% \keineloesung%
%% %% Zaehler erst nach Pruefung erhoehen:
%% \addtocounter{teilaufgabennummer}{1}%
%% \setcounter{teilaufgabenloesung}{0}%
%% \setcounter{loesungslinienanzahl}{0}%
%%   % Vortext(#1)(1) oder (a),(b),...-Text(0) in Zaehler abspeichern:
%%   \ifthenelse{\equal{ohnenummer}{#1} \or \equal{o}{#1}}%
%%      {\setcounter{vortext}{1}}% Vortextmodus: keine Aufzaehlung, ...
%%      {\setcounter{vortext}{0}}% Teilaufgabenmodus
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   % Fachnummer (#2) (fuer Punktzahlkasten) ermitteln
%%   % Fuer Technologie: #2=t,T,1 > Fachnummer 1
%%   \ifthenelse{\equal{t}{#2} \or \equal{T}{#2} \or \equal{1}{#2}}%% Bedingung
%%      {\setcounter{fachnummer}{1}\TeilFach{T}}%
%%      {}%
%%   % Fuer Arbeitsplanung: #2=AP,ap,Ap,A,2 > Fachnummer 2
%%   \ifthenelse{\equal{AP}{#2} \or \equal{ap}{#2} \or \equal{Ap}{#2} \or%
%%      \equal{a}{#2} \or \equal{A}{#2} \or \equal{2}{#2}}%% Bedingung
%%      {\setcounter{fachnummer}{2}\TeilFach{A}}%
%%      {}%
%%   % Fuer Mathe: #2=m,M,3
%%   \ifthenelse{\equal{m}{#2} \or \equal{M}{#2} \or \equal{3}{#2}}%% Bedingung
%%      {\setcounter{fachnummer}{3}\TeilFach{M}\setcounter{linierung}{1}% kariert
%%      }%
%%      {}%
%%   % Loesungslinienanzahl (#3) in Zaehler abspeichern:
%%   \ifthenelse{#3<0}% negative werte heben Punktzahlkasten an ???
%%      {\setlength{\anheben}{#3mm}\setcounter{loesungslinienanzahl}{0}}%
%%      {\setcounter{loesungslinienanzahl}{#3}}%
%%   %Punkteanzahl(#4) in Zaehler abspeichern
%%   \ifthenelse{\equal{#4}{}}%
%%      {\setcounter{punktetauf}{0}}%
%%      {\setcounter{punktetauf}{#4}}%
%% }% Ende Sonst ...........................
%% \ifthenelse{\value{aufgabenstellung}=0 \or%
%%             \value{teilaufgabennummerreal}=\value{ohneeins} \or%
%%             \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
%%             \value{teilaufgabennummerreal}=\value{ohnedrei}%
%%            }{\comment}{%
%%   \par% auf jeden Fall eine neue Zeile beginnen
%%   \smallskip% Abstand zur vorheriger Teilaufgabe herstellen
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % 4 neue Teilaufgabe beginnen
%%   \begin{minipage}[t]{\aufgabenumbruchbreite}%
%% % BEGINN: Abfrage ob Vortext
%%   \ifthenelse{\value{vortext}=1}{}%
%%      {% kein Vortext Beginn
%%      \begin{list}%
%%     {% Beginn Def. der Standardmarke
%%     \ifthenelse{\value{teilaufnummerierung}=0}%
%%       {\alph{teilaufgabennummer}) }%^^A 1a,1b ...
%%       {{\textbf{\hspace{1.5mm}\theaufgabennummer.\arabic{teilaufgabennummer}} }}%1.1...
%%     }% Ende Def. der Standardmarke
%%     { % Beginn der Listenerklaerung
%%     \setlength{\leftmargin}{3ex}% leicht einger^^fcckt
%%     \addtolength{\leftmargin}{0mm}%
%%     \setlength{\labelsep}{0.2ex}% Abstand Text -- Marke => evtl. aendern
%%     \setlength{\labelwidth}{3.6ex}% Grosszuegig gewaehlt
%%     \setlength{\itemindent}{0mm}% kein Einruecken in der ersten Zeile
%%     \setlength{\parskip}{0mm}%
%%     \ifthenelse{\value{lockerer}=0}{\setlength{\topsep}{0pt}}{%
%%     \setlength{\topsep}{\lockererwert}}%
%%     \setlength{\parsep}{0mm}%
%%     \setlength{\partopsep}{0mm}%
%%     \ifthenelse{\value{lockerer}=0}{\setlength{\itemsep}{0pt}}{%
%%     \setlength{\itemsep}{\lockererwert}}%
%%     }% Ende der Listenerklaerung
%%     \item%%==========Weg
%%     }% kein Vortext Ende
%% % ENDE: Abfrage ob Vortext
%% }% Ende Formatierungsbefehle, nur gebraucht, wenn aufgabenstellung=1
%% }% ENDE bei \begin ausgefuehrt %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%
%% %%%
%% %%%
%% {% BEGINN bei \end ausgefuehrt: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \ifthenelse{\value{aufgabenstellung}=0 \or%
%%             \value{teilaufgabennummerreal}=\value{ohneeins} \or%
%%             \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
%%             \value{teilaufgabennummerreal}=\value{ohnedrei}%
%%            }{\endcomment}{}%
%% %%%%%%%%%% ab hier
%% %\ifthenelse{\value{teilaufgabennummerreal}=\value{ohneeins} \or%
%% %            \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
%% %            \value{teilaufgabennummerreal}=\value{ohnedrei}%
%% %           }% Wenn Aufgabe auslassen
%% %{}% Teilaufgabe nicht zeigen
%% %{% Teilaufgabe zeigen ....
%% %\par%
%% %\ifthenelse{\value{loesungslinienanzahl}=1000}% = keine Loesungslinie
%% %     {% Dann Platz schaffen Beginn
%% %      \setcounter{punktetauf}{0}\setcounter{fachnummer}{0}%
%% %      \vspace{3mm}% auf 3mm lassen
%% %     }% Dann Platz schaffen Ende
%% %     {% Sonst Linien zeichnen Beginn
%% %      \ifthenelse{\value{loesungslinienanzahl}=0}% 0 Loesungslinien ?
%% %         {% Dann Beginn (0 Loesungslinien)
%% %          \ifthenelse{\value{loesungslinienzeigen}=1}%
%% %           {\pzk}% Dann nur Punktzahlkasten zeichnen
%% %           {\hfill% Sonst kein Punktzahlkasten
%% %            \begin{picture}(0,0)(-1,0)% Beginn Punktzahlkasten (-1.25,0)
%% %            \end{picture}%
%% %            \linebreak
%% %           }%
%% %         }% Dann Ende (0 Loesungslinien)
%% %         {% Sonst Beginn (1 oder mehr Loesungslinien)
%% %          \ifthenelse{\value{loesungslinienzeigen}=1}%
%% %           {% Linien zeigen
%% %            \ifthenelse{\value{linierung}=1}%
%% %              {% Kariert (Mathe)
%% %% übernimmt Lösung 
%% %%\lkamathe[\value{loesungslinienanzahl}]%
%% %              }%
%% %              {% Liniert
%% %% übernimmt Lösung              
%% %%\lka[\value{loesungslinienanzahl}]%
%% %              }%
%% %           }% Linien zeigen
%% %           {\smallskip}% sonst keine Linien zeigen
%% %         }%^^A Sonst Ende (1 oder mehr L^^f6sungslinien)
%% %     }%^^A Sonst Linien zeichnen Ende
%% %
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % Punktzahlen (fachspezifisch) aufaddieren: T, AP, M
%%   \ifthenelse{\value{fachnummer}=1}{\addtocounter{punktet}{\value{punktetauf}}}{}%
%%   \ifthenelse{\value{fachnummer}=2}{\addtocounter{punkteap}{\value{punktetauf}}}{}%
%%   \ifthenelse{\value{fachnummer}=3}{\addtocounter{punktem}{\value{punktetauf}}}{}%
%%   \addtocounter{punktesumme}{\value{punktetauf}}%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % Liste beenden, falls erforderlich
%%   \ifthenelse{\value{vortext}=1}{}{\end{list}}%
%% % minipage der Teilaufgabe beenden
%%   \end{minipage}%
%% \par%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% % Variabler Abstand
%% %\ifthenelse{\value{dehnen}=0}{}{\vspace{2mm} \medskip}%
%% %}% Ende Formatierungsbefehle, nur gebraucht, wenn aufgabenstellung=1
%% \setcounter{teilaufgabenloesung}{0}
%% %}% .... Teilaufgabe zeigen
%% }%ENDE bei \end ausgefuehrt
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% teilaufgabe ende
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






\renewenvironment{teilaufgabe}[4][nix]{%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1 restliche Linien der Voraufgabe zeichnen
\ifthenelse{\value{loesungslinienzeigen}=0 \or \value{nothing}=1 \or \value{loesungslinienanzahl}=0}{}{
   \ifthenelse{\value{vortext}=1}%
   {\nopagebreak\begin{minipage}[t]{\aufgabenumbruchbreite}}
   {\nopagebreak\hspace{3ex}\begin{minipage}[t]{\aufgabenumbruchbreite-3ex}}
   %% restliche Linien der Voraufgabe zeichnen
   \drawrestoflines%
      %% Mathe-Bereich zeichnen
     \ifthenelse{\value{linierung}=1 \and \value{loesungslinienzeigen}=1}{% Mathe
         \lkamathe[\value{loesungslinienanzahl}]%
      }{}%
   \end{minipage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2 Zaehler für die neue Aufgabe setzen, auch wenn nicht gezeigt
\setcounter{punktebefehle}{0}   \setcounter{linierung}{0}% 
\setcounter{punktetauf}{0}      \setcounter{fachnummer}{0}%
\addtocounter{teilaufgabennummerreal}{1}%
\setcounter{nothing}{0}
\ifthenelse{\value{ohneeins}=\value{teilaufgabennummerreal} \or%
            \value{ohnezwei}=\value{teilaufgabennummerreal} \or%
            \value{ohnedrei}=\value{teilaufgabennummerreal}%
           }% Wenn Aufgabe auslassen
{}% nix tun, wenn Aufgabe auslassen
{% Sonst Aufgabe zeichnen ......
\keineloesung%
  %% Zaehler hochsetzen wenn Aufgabe gezeigt 
  \addtocounter{teilaufgabennummer}{1}%
  \setcounter{teilaufgabenloesung}{0}%
  \setcounter{loesungslinienanzahl}{0}%
  % Vortext(#1)(1) oder (a),(b),...-Text(0) in Zaehler abspeichern:
  \ifthenelse{\equal{ohnenummer}{#1} \or \equal{o}{#1}}%
    {\setcounter{vortext}{1}}% Vortextmodus: keine Aufzaehlung, ...
    {\setcounter{vortext}{0}}% Teilaufgabenmodus
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Fachnummer (#2) (fuer Punktzahlkasten) ermitteln
  % Fuer Technologie: #2=t,T,1 > Fachnummer 1
  \ifthenelse{\equal{t}{#2} \or \equal{T}{#2} \or \equal{1}{#2}}%% Bedingung
     {\setcounter{fachnummer}{1}\TeilFach{T}}%
     {}%
  % Fuer Arbeitsplanung: #2=AP,ap,Ap,A,2 > Fachnummer 2
  \ifthenelse{\equal{AP}{#2} \or \equal{ap}{#2} \or \equal{Ap}{#2} \or%
     \equal{a}{#2} \or \equal{A}{#2} \or \equal{2}{#2}}%% Bedingung
     {\setcounter{fachnummer}{2}\TeilFach{A}}%
     {}%
  % Fuer Mathe: #2=m,M,3
  \ifthenelse{\equal{m}{#2} \or \equal{M}{#2} \or \equal{3}{#2}}%% Bedingung
     {\setcounter{fachnummer}{3}\TeilFach{M}\setcounter{linierung}{1}% kariert
     }%
     {}%
  % Loesungslinienanzahl (#3) in Zaehler abspeichern:
  \ifthenelse{#3<0}% negative werte heben Punktzahlkasten an ???
     {\setlength{\anheben}{#3mm}\setcounter{loesungslinienanzahl}{0}}%
     {\setcounter{loesungslinienanzahl}{#3}}%
  %Punkteanzahl(#4) in Zaehler abspeichern
  \ifthenelse{\equal{#4}{}}%
     {\setcounter{punktetauf}{0}}%
     {\setcounter{punktetauf}{#4}}%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%  Aufgabenstellung zeigen oder nicht
  \ifthenelse{\value{aufgabenstellung}=0 \or%
            \value{teilaufgabennummerreal}=\value{ohneeins} \or%
            \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
            \value{teilaufgabennummerreal}=\value{ohnedrei}%
%           }{\comment}{%
           }{}{%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 3 neue Teilaufgabe schreiben
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Punktzahlen (fachspezifisch) aufaddieren: T, AP, M
      \ifthenelse{\value{fachnummer}=1}{\addtocounter{punktet}{\value{punktetauf}}}{}%
      \ifthenelse{\value{fachnummer}=2}{\addtocounter{punkteap}{\value{punktetauf}}}{}%
      \ifthenelse{\value{fachnummer}=3}{\addtocounter{punktem}{\value{punktetauf}}}{}%
      \addtocounter{punktesumme}{\value{punktetauf}}%
    \par% auf jeden Fall eine neue Zeile beginnen
    %% Abstand zur vorheriger Teilaufgabe herstellen
    \vspace{2.5mm plus2mm}% ??????
    \begin{minipage}[t]{\aufgabenumbruchbreite}%
    % BEGINN: Abfrage ob Vortext
    \ifthenelse{\value{vortext}=1}{}{% kein Vortext Beginn
      \begin{list}%
        {% Beginn Def. der Standardmarke
          \ifthenelse{\value{teilaufnummerierung}=0}%
            {\alph{teilaufgabennummer}) }% 1a,1b ...
            {{\textbf{\hspace{1.5mm}\theaufgabennummer.\arabic{teilaufgabennummer}} }}%
             % 1.1...
        }% Ende Def. der Standardmarke
        { % Beginn der Listenerklaerung
          \setlength{\leftmargin}{3ex}% leicht eingerueckt
          \addtolength{\leftmargin}{0mm}%
          \setlength{\labelsep}{0.2ex}% Abstand Text -- Marke => evtl. aendern
          \setlength{\labelwidth}{3.6ex}% Grosszuegig gewaehlt
          \setlength{\itemindent}{0mm}% kein Einruecken in der ersten Zeile
          \setlength{\parskip}{0mm}%
          \ifthenelse{\value{lockerer}=0}{\setlength{\topsep}{0pt}}{%
          \setlength{\topsep}{\lockererwert}}%
          \setlength{\parsep}{0mm}%
          \setlength{\partopsep}{0mm}%
          \ifthenelse{\value{lockerer}=0}{\setlength{\itemsep}{0pt}}{%
          \setlength{\itemsep}{\lockererwert}}%
        }% Ende der Listenerklaerung
      \item%%==========Weg
    }% kein Vortext Ende
  }% Aufgabenstellung zeigen oder nicht
}%Sonst Aufgabe zeichnen ......
 \ifthenelse{\value{aufgabenstellung}=0 \or%
            \value{teilaufgabennummerreal}=\value{ohneeins} \or%
            \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
            \value{teilaufgabennummerreal}=\value{ohnedrei}%
 }{%
    %% Aufgabe wurde nicht angezeigt
    \setcounter{nothing}{1}
    \comment}{}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
{
 % Aufgabenstellung beenden
 \ifthenelse{\value{aufgabenstellung}=0 \or%
             \value{teilaufgabennummerreal}=\value{ohneeins} \or%
             \value{teilaufgabennummerreal}=\value{ohnezwei} \or%
             \value{teilaufgabennummerreal}=\value{ohnedrei}%
            }{\endcomment}{%
  \ifthenelse{\value{vortext}=1}{}{\end{list}}%
\end{minipage} \par% der Aufgabenstellung
\nopagebreak \par
}}






\newenvironment{muster}{%
     \setlength{\gitterhoehe}{5mm*\value{loesungslinienanzahl}}
     \hspace{4ex}\begin{minipage}[t][\gitterhoehe][t]{\aufgabenumbruchbreite-6ex}
     \vspace{3mm}
     \color{arblsgmustercolor}%
}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
{%
   \end{minipage} \par%       
   \vspace{-\gitterhoehe}
   \vspace{-1mm}
   \color{black}%
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% loesung start
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{loesung}%
{% BEGINN bei \begin ausgefuehrt
% Anzahl benutzter \punkte-Aufrufe zuruecksetzten
\setcounter{punktebefehle}{0}%
\setcounter{teilaufgabenloesung}{0}%
\ifthenelse{\value{fachnummer}=1}{\TeilFach{T}}{}
\ifthenelse{\value{fachnummer}=2}{\TeilFach{A}}{}
\ifthenelse{\value{fachnummer}=3}{\TeilFach{M}}{}
% sollen Lösungslinien gezeigt werden?
\ifthenelse{\value{loesungslinienzeigen}=0 \or \value{loesungslinienanzahl}=0}{}{%
     \ifthenelse{\value{linierung}=1}{% Mathe
      % Minipage fuer Mathe beginnen
      \par\nopagebreak\par\setlength{\gitterhoehe}{5mm*\value{loesungslinienanzahl}}
      \hspace{4ex}\begin{minipage}[t][\gitterhoehe][b]{\aufgabenumbruchbreite-6ex}
      %Matheminipage: \hfill Ende\par
    }{
      % Minipage fuer Loesungslinien beginnen
      \ifthenelse{\value{vortext}=1}%
        {\begin{minipage}[t]{\aufgabenumbruchbreite}}
        {\hspace{3ex}\begin{minipage}[t]{\aufgabenumbruchbreite-3ex}}
    }
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER fuer Kompakte Lösungen BEGINN
\ifthenelse{\value{loesungen}=0}
%   {\comment}  % durch nächste Zeile ersetzt
   {}
   {% Loessungstitel bei ***AUFGABE UND LOESUNG***, BEGINN
      \ifthenelse{\value{aufgabenstellung}=1 \and% Wenn Aufgabenstellung und
         \value{loesungen}=1 \and% Loessungen ausgegeben werden
         \value{teilaufgabenloesung}=0}% sowie \loesung das erstemal%
         {% Dann
         \vspace{-2ex}% Loesung naeher an Aufgabe heranbringen (nur 1.mal)
         \ifthenelse{\value{loesungslinienanzahl}=0}% Wenn ohne Loesungslinienen
            {% Dann Abgrenzungslinie Aufgabe-Loesung zeichnen
              \vspace{2.5mm}% zusaetzlicher Abstand
              \begin{picture}(0,0)% unbemerkbares Bild, Abgrenzungslinie
                 \thicklines                 %% Breie Linien
                 \put(0,5){\line(1,0){177}}  %% Linie Zeichnen
              \end{picture}%
            }{}%
            \textbf{\textcolor{gruen}{Lösung: }}% Loesung in gruen (nur 1.mal)
         }{}%
      % Loesungsbefehl wurde ausgefuehrt innerhalb Aufgabe=ja
      \setcounter{ersteloesunginaufgabe}{1}%
      % Loessungstitel bei ***AUFGABE UND LOESUNG***, ENDE
    % Minipage fuer Punkte beginnen
      \ifthenelse{\value{aufgabenstellung}=1}%
         {\begin{minipage}[t]{\aufgabenumbruchbreite-17.5mm}}{}%
   }%
% HEADER fuer Kompakte Lösungen ENDE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}% ENDE bei \begin ausgefuehrt
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
{% BEGINN bei \end ausgefuehrt
\ifthenelse{\value{nothing}=1}{}{%
    \drawrestoflines%
}%
% Minipage fuer Loesungslinien beenden
\ifthenelse{\value{loesungslinienzeigen}=0 \or \value{loesungslinienanzahl}=0}{}%
   {%
     \ifthenelse{\value{linierung}=1}{% Mathe
       \end{minipage} \par\nopagebreak\par%
       \vspace{-\gitterhoehe}\par\nopagebreak\par%
       \vspace{-1mm}\par\nopagebreak\par%
     }{
       \end{minipage} \par\nopagebreak\par%%
     }
}% 
\ifthenelse{\value{loesungen}=0}
   {}{% {\endcomment} % durch leer ersetzt
    % Minipage fuer Punkte beenden
    \ifthenelse{\value{aufgabenstellung}=1}
       {\end{minipage} \par}{}
   \setcounter{ersteloesunginaufgabe}{1} \par
   }
}% ENDE bei \end ausgefuehrt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% loesung ende
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% drawrestoflines
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\drawrestoflines}{
%\thepunktebefehle --- \theloesungslinienanzahl  
\ifthenelse{\value{fachnummer}=1}{\TeilFach{T}}{}
\ifthenelse{\value{fachnummer}=2}{\TeilFach{A}}{}
\ifthenelse{\value{fachnummer}=3}{\TeilFach{M}}{}
\ifthenelse{\value{loesungslinienzeigen}=0 \or \value{nothing}=1%
                          \or \value{loesungslinienanzahl}=0}{}%
 {%
  \ifthenelse{\value{loesungslinienanzahl}=0}{%
    %% 0 Loesungslinien
      %zero \thenothing \setcounter{nothing}{1} 
     \setcounter{nothing}{1} \par

     \nopagebreak
     \hfill \begin{picture}(0,0)%
        \put(0,-1.8){\pzkbild}%
     \end{picture}%
     \linebreak
    }{
     \ifthenelse{\value{linierung}=1}%
       {% Kariert (Mathe)
         % uebernimmt teilaufgabe,aufgabe, ...
         %\lkamathe[\value{loesungslinienanzahl}]%
       }%
       {% Liniert
         % Restliche Lösungslinien setzten
         \ifthenelse{\value{punktebefehle}<\value{loesungslinienanzahl}}{%
            \stepcounter{punktebefehle}%
            \whiledo{\value{punktebefehle}<\value{loesungslinienanzahl}}%
            {%% Beginn WHILE DO
               \lll[v][l]{} \vspace{1mm} \linebreak
               \stepcounter{punktebefehle}%
            }%% ENDE WHILE DO
            \ifthenelse{\value{punktebefehle}=\value{loesungslinienanzahl}}{%
%         \lll[v][l]{w} \pzkbild \linebreak
            \lll[v][l]{} %
            \begin{picture}(0,0)%
               \put(0,-0.8){\pzkbild}%
            \end{picture}%
            \linebreak
            }{}
         }{}%
        %\setcounter{punktebefehle}{0}%
    }
   }
}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% drawrestoflines
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% punkte start
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\punkte}[4][]{%      
\stepcounter{punktebefehle}%
%\ifthenelse{\value{punktebefehle}=1}{Zähler \thepunktebefehle}{nicht E}%
\ifthenelse{\value{loesungslinienzeigen}=0}{%
   %% Nur Loesung ausgeben
   \ifthenelse{\value{loesungen}=1}{
      \ifthenelse{\value{punktebefehle}=1}{\teilaufgabennummererzeugen}{\makebox[9mm][r]{}\makebox[6.5mm][r]{}}%
          \setlength{\fboxsep}{0.7mm}%
%          \begin{itemize}
%          \item #2 \showpointbox{#3} \ifthenelse{\equal{}{#4}}{}{ (#4)}
%          \end{itemize}
          #2 \showpointbox{#3} \ifthenelse{\equal{}{#4}}{}{ (#4)}% old but good
          \par% % this par puts every \punkte{}{}{} in a new line
   }{}%
}{%% Lösung mit Linien usw.
   % Position(#1) #Loesung(#2), Punkte(#3) und Kommentar(#4) angeben
   \ifthenelse{\value{loesungslinienanzahl}=0 \and \equal{#1}{}}%
   {% Fehler melden 
      \typeout{Fehler: Befehl \punkte{}{}{} in Aufgabe, aber keine Loesungslinien!}%
      \typeout{Use Koordinates in \punkte[x,y]{Solution}{}{} to show solution!}%
   }%
   {% Lösungen auf den Koordinaten ausgeben
     \ifthenelse{\equal{#1}{}}{}{%
     \setlength{\fboxsep}{0.7mm}%
     \begin{picture}(0,0)%
       %% Koordinatenkreuz bei Option debug
       %%
       %% Loesung zeigen
       \put(#1){\arblsg{#2 \showpointbox{#3} \ifthenelse{\equal{}{#4}}{}{ (#4)}}}
     \end{picture}%
     }%
   }%
   %
   \ifthenelse{\value{loesungslinienanzahl}>0}%
     {% Linienanzahl angegeben
     % Position(#1) #Loesung(#2), Punkte(#3) und Kommentar(#4) angeben
%     \stepcounter{punktebefehle}%
     \ifthenelse{\value{ohneeins}=\value{teilaufgabennummerreal} \or%
            \value{ohnezwei}=\value{teilaufgabennummerreal} \or%
            \value{ohnedrei}=\value{teilaufgabennummerreal}%
     }% Wenn teilaufgabe ausgeblendet wird
     {}% Dann nichts machen (bei Ausblenden)
     {%Sonst (Teilaufgabe nicht ausgeblendet) BEGINN
     %% Linien oder Mathe
     \ifthenelse{\value{linierung}=1}%
        {% Kariert (Mathe)
          \textcolor{arblsgcolor}{%
            #2 \showpointbox{#3} \ifthenelse{\equal{}{#4}}{}{ (#4)}%
          }%
        }%
        {% Liniert
          \lll[v][l]{\arblsg{% Weisser Text oder Grün
              #2 \showpointbox{#3} \ifthenelse{\equal{}{#4}}{}{ (#4)}%
          }
          }% ende \lll 
          % Punktzahlkasten oder nicht?
          % nicht die Letzte Linie
          \ifthenelse{\value{loesungslinienanzahl}>\value{punktebefehle}}%
          { \vspace{1mm} \linebreak }{}
          % Die letzte Linie
          \ifthenelse{\value{loesungslinienanzahl}=\value{punktebefehle}}%
          {%
          \begin{picture}(0,0)%
             \put(0,-0.8){\pzkbild}%
          \end{picture}%
          \linebreak }{}
          % Zuviel linien in \punkte
          \ifthenelse{\value{loesungslinienanzahl}<\value{punktebefehle}}%
            {\textcolor{red}{Fehler: \theloesungslinienanzahl{} Lösungslinien 
              angegeben aber \thepunktebefehle{} benutzt}\linebreak}%
            {}
        }%
      }% Sonst (Teilaufgabe nicht ausgeblendet) ENDE
  }{}% linienzahl angeben 
}%
  % Loesungsbefehl wurde einmal ausgefuehrt, also Zaehler setzen
  \setcounter{teilaufgabenloesung}{1}%
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% punkte ende
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% lkamathe start
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\lkamathe}[1][1]{
\ifthenelse{\equal{#1}{0}}{}{
\setcounter{lka}{1}
% Gitterhoehe ermitteln aus Loesungslinienanzahl
\setcounter{gitterhoehe}{\value{loesungslinienanzahl}*5}
\vspace{-4mm}\par\nopagebreak\par%
\vspace{\zusatzlkaabstand}\par\nopagebreak\par% Zusatzabstand zwischen Loesungslinien

\ifthenelse{\value{arblsg}=1}{%
\ifthenelse{\value{vortext}=1}
   {\begin{picture}(158,\value{gitterhoehe})(-5.5,0)}% Wenn ohne a,b,c
   {\begin{picture}(158,\value{gitterhoehe})}% Wenn mit a,b,c
    \linethickness{\loesungslinienbreite}
    \textcolor{arblsgcolor}{%
       \put(0,-5){\line(1,0){155}}% unten
       \put(0,-5){\line(0,1){\value{gitterhoehe}}}% links
       \put(155,-5){\line(0,1){\value{gitterhoehe}}}% rechts
       \setcounter{gitterhoehe}{\value{gitterhoehe}-5}
       \put(0,\value{gitterhoehe}){\line(1,0){155}}% oben
    }% Ende textcolor
    \end{picture}
\rule{\linewidth}{0mm}% unsichtbar, schiebt pzk nach rechts
\pzkbild%
\linebreak
}{
\whiledo{\value{lka}<#1}% n-1 Linien erzeugen
{%% Beginn WHILE DO
\ifthenelse{\value{vortext}=1}
   {\begin{picture}(158,5)(-5.5,0)}% Wenn ohne a,b,c
   {\begin{picture}(158,5)}% Wenn mit a,b,c
     \linethickness{\loesungslinienbreitekariert}
       \multiput(0,0)(0,5){1}{\line(1,0){155}}
       \multiput(0,-5)(5,0){32}{\line(0,1){5}}
  \end{picture}
  \linebreak
  \addtocounter{lka}{1}%
}%% ENDE WHILE DO
\ifthenelse{\value{vortext}=1}
   {\begin{picture}(158,5)(-5.5,0)}% Wenn ohne a,b,c
   {\begin{picture}(158,5)}% Wenn mit a,b,c
      \linethickness{\loesungslinienbreitekariert}
        \multiput(0,-5)(0,5){2}{\line(1,0){155}}
        \multiput(0,-5)(5,0){32}{\line(0,1){5}}
    \end{picture}
\rule{\linewidth}{0mm}% unsichtbar, schiebt pzk nach rechts
\pzkbild%
\linebreak
}}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% lkamathe ende
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% showpointbox beginn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\showpointbox}[2][]{
  \setlength{\fboxsep}{0.7mm}%
  \ifthenelse{\equal{1/2}{#2}}%
     {\ovalbox{\raisebox{0.75mm}{$\scriptscriptstyle \frac{1}{2}$}}}%
       {\ifthenelse{\equal{1/3}{#2}}%
          {\ovalbox{\raisebox{0.75mm}{$\scriptscriptstyle \frac{1}{3}$}}}%
          {\ovalbox{#2}}%
       }%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% showpointbox ende
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% crossitem beginn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\crossitem}{%
    \item% 
      \setlength{\unitlength}{1mm}% 
      \begin{picture}(0,0)
         \ifthenelse{\value{arblsg}=0}{}{
            \textcolor{arblsgcolor}{% 
            \thicklines   
            \put(-14,-2){\line(1,1){8.65}}
            \put(-14,6.7){\line(1,-1){8.65}}
            }%
         }
      \end{picture}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% showpointbox ende
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


