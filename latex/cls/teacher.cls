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

\newcounter{mainpage}
\newcounter{apppage}

\newsavebox{\aufgabenmarke}


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

%%%% \Name
\newcommand{\nameuse}[2][]{
  \ifthenelse{\value{debuggen}=1}{%
    \hspace{-1ex}\textcolor{red}{\texttt{\textbackslash Name\{\}\hspace{-1ex}}}%
  }{\xspace}
}
\newcommand{\Name}[2][]{%
  \ifthenelse{\value{debuggen}=1}{}{\renewcommand{\nameuse}[2][]{#2}}
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
  \cfoot{Seite \thepage /\pageref{LastPage}}
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
             }%% ab 1.Seite
  \AtBeginDocument{%
     \Fehler{\bf Punkte:} 
     \DocType{Prüfung}
     \Titelo{\doctypeuse{}}
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
             }%% ab 1.Seite
  \AtBeginDocument%
     {%
     \DocType{Klassenarbeit}
     \Titelo{\doctypeuse{}}
     \Fehler{\bf Punkte:}
     \InputIfFileExists{ka-format.tex}{}{Datei ka-format.tex nicht geladen!}
     \setcounter{fachangabepzk}{1}% bei kamulti müssen Fächer genannt werden
%%     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% Abschluss-Block für 1 Fach setzen
     \input{_ka-multi-ende}%
     }% Ende atenddocument
}%
%%%%%%%%%%%%% ENDE OPTION kamulti %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{arb}%
%% arb= Erzeuge Arbeitsblatt mit Rahmen
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
     \InputIfFileExists{arb-format.tex}{}{Datei arb-format.tex nicht geladen!}
     \aufgabenmarkesetzen%
     }% Ende atbegindocument
  \AtEndDocument%
     {% 
     %% nothing to do
     }% Ende atenddocument
}%
%%%%%ENDE OPTION ARB %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


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
\AtEndOfClass{\setlength{\textheight}{256mm}%
              \setlength{\footskip}{6mm}%
              \setlength{\headsep}{5mm}%
              \setlength{\headheight}{8mm}%
             }%% ab 1.Seite
\AtBeginDocument%
     {%
     %% Seitenlayout
     \pagestyle{fancy}
     \renewcommand{\headrulewidth}{0.25mm}%
     \renewcommand{\footrulewidth}{0.25mm}%
     \DocType{Bearbeitungsmodus}
     \chead{\bf Stoffverteilungsplan}
     \rhead{\bf \klasseuse{}: \usertokenuse{}}
     %% Spezielle Befehle für Stoffverteilungsplan
     \newcounter{stundennummer}
     \setcounter{stundennummer}{1}
     \newcounter{mathestunden}
     \newcounter{technologiestunden}
     \newenvironment{tabelle}
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
         Technologie-Stunden im Block: \thetechnologiestunden \hspace{6mm}
         Mathe-Stunden im Block: \themathestunden 
         \vspace{1ex}
         \setcounter{mathestunden}{0}
         \setcounter{technologiestunden}{0}
      }% end end
      %% Eintrag in den Stoffverteilungsplan
      \newsavebox{\stoffstundendatum}
      \savebox{\stoffstundendatum}{\ldots}
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
      %% Blockende Markieren innerhalb von Tabelle
      \newcommand{\block}{
      \end{tabelle}
      \begin{tabelle}
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


\newcommand{\anhang}[2][]{%
   %% counting the references in the main material
   \stepcounter{mainpage}%
   (siehe Anhang \Alph{mainpage})%
   \AtEndDocument{%
      %% counting the pages in the appendix
      \stepcounter{apppage}
      %% show this
      %%\lhead{}
      %%\chead{\bfseries Anhang \Alph{apppage}}
      %%\rhead{}
      \lfoot{\bfseries Anhang \Alph{apppage}}
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
            [width=\textwidth,height=\textheight,keepaspectratio]{#2}
      }{\includegraphics[#1]{#2}}
      \end{center}
      \vspace*{\fill}
      \clearpage
   }%
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
   \rhead{\raisebox{1.5mm}{\bf \thepage /\pageref{LastPage}\hspace{2.2mm}}}}{\rhead{}}
%% < \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein 
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}}{%
    \cfoot{\thepage /\pageref{LastPage}}}{\cfoot{}}
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
    \rhead{\raisebox{14.3mm}{\scriptsize Seite \thepage /\pageref{LastPage}}}}{\rhead{}}
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}}{%
    \cfoot{\thepage /\pageref{LastPage}}}{\cfoot{}}
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
    \rhead{\raisebox{1.5mm}{\bf \thepage /\pageref{LastPage}\hspace{2.2mm}}}}{\rhead{}}
%% < \rhead Zusatzparameter [nt] schaltet Kopf-Nummerierung ein 
\lfoot{}
%% Zusatzparameter [nb] schaltet Fuss-Nummerierung ein >
  \ifthenelse{\equal{#1}{nb}%
          \or \equal{#1}{verbesserungnb}}{%
    \cfoot{Seite \thepage / \pageref{LastPage}}}{\cfoot{}}
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
    \cfoot{Seite \thepage /\pageref{Lastpage}}}{\cfoot{}}
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
\RequirePackage{calc}
\RequirePackage[T1]{fontenc}
\RequirePackage[latin1]{inputenc}
\RequirePackage{ngerman}
\RequirePackage{fancybox}
\RequirePackage{marvosym}
%%\RequirePackage{fancyhdr}
\RequirePackage[dvips]{color}
\RequirePackage{moreverb}
\RequirePackage{twoopt}
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

