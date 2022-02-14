%%
%% This is file `hasel_thesis.cls'.
%%
%% This file is the HASEL thesis class files.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{hasel_thesis}
              [2011/09/16 v3.0e
 HASEL LaTeX thesis class]

\LoadClass[10pt,twoside,a4paper,fleqn]{book}
\RequirePackage{hasel}
\RequirePackage{fancyhdr}

%% paper dimensions and lengths
\setlength{\textwidth}{15cm}
\setlength{\textheight}{21.3cm}
\setlength{\evensidemargin}{-6mm}
\addtolength{\oddsidemargin}{4mm}
\setlength{\topskip}{0pt}
\setlength{\topsep}{2em}
\setlength{\floatsep}{1.5em plus 2pt minus 2pt}
\setlength{\textfloatsep}{2.5em plus 2pt minus 4pt}
\setlength{\intextsep}{2em}
\setlength{\doublerulesep}{0pt}

%% header/footer
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ \ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}
\fancyhf{}
\fancyhead[LE,RO]{\phvbold\small\thepage}
\fancyhead[LO]{\sffamily\rightmark}
\fancyhead[RE]{\sffamily\leftmark}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

%% command definitions for title pages
\def\thesisType#1{\gdef\@thesisType{#1}}
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\home#1{\gdef\@home{#1}}
\def\country#1{\gdef\@country{#1}}
\def\legi#1{\gdef\@legi{#1}}
\def\prof#1{\gdef\@prof{#1}}
\def\assistent#1{\gdef\@assistent{#1}}
\def\email#1{\gdef\@email{#1}}
\def\url#1{\gdef\@url{#1}}
\def\begindate#1{\gdef\@begindate{#1}}
\def\enddate#1{\gdef\@enddate{#1}}

\gdef\@thesisType{No Thesis Type given}
\gdef\@title{No Title given}
\gdef\@subtitle{missing}
\gdef\@date{No Date given}
\gdef\@home{No Home given}
\gdef\@country{No Country given}
\gdef\@legi{No Legi given}
\gdef\@prof{No Professor given}
\gdef\@assistent{No Assisten(s) given}
\gdef\@email{missing}
\gdef\@url{missing}
\gdef\@begindate{No Begin Date given}
\gdef\@enddate{No End Date given}
\def\missing{missing}

\newif\ifsubtitle
\subtitletrue
\newif\ifemail
\emailtrue
\newif\ifurl
\urltrue

\newlength{\normaltopmargin}
\setlength\normaltopmargin{\topmargin}

%% title page
\renewcommand\maketitle{%
  \ifx\@subtitle\missing
    \subtitlefalse
  \fi
  \ifx\@email\missing
    \emailfalse
  \fi
  \ifx\@url\missing
    \urlfalse
  \fi
  \newpage
  \thispagestyle{empty}
  \begingroup
  \fontfamily{phv}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{20}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip -2\p@
    {\fontsize{9}{0}\selectfont \@date}
    \vskip 20\p@
    {\fontfamily{phv}\fontsize{40}{44}\selectfont\bfseries \@title\par}
    \ifsubtitle
      \vskip -12\p@  
	\parbox{\textwidth}{
	\begin{flushright}
		\fontfamily{phv}\fontsize{20}{30}\selectfont \@subtitle
	\end{flushright}}
    \fi
    \vfill
    {\fontsize{20}{0}\selectfont\bfseries \@author}
    \vskip 2\p@
    {\fontsize{8}{0}\selectfont of \@home,\ \@country \ (\@legi)}
    \vskip 35\p@
    {\fontsize{10}{0}\selectfont\bfseries supervised by}
    \vskip 4\p@
    {\fontsize{11}{0}\selectfont \@prof\\[2\p@] \@assistent}
 \end{flushright}%
 \vskip 87\p@
 \parindent \z@
 \includegraphics[width=4.5cm]{logo_uzh}\hfill\includegraphics[width=5cm]{logo_hasel_bw}
 \endgroup
 \clearpage\thispagestyle{empty}\cleardoublepage
  \thispagestyle{empty}
  \begingroup
  \fontfamily{phv}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{20}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip 31\p@
    {\fontsize{40}{44}\selectfont\bfseries \@title\par}
    \ifsubtitle
     \vskip -12\p@  
	\parbox{\textwidth}{
	\begin{flushright}
		\fontfamily{phv}\fontsize{20}{30}\selectfont \@subtitle
	\end{flushright}}
    \fi
    \vfill
    {\fontsize{20}{0}\selectfont\bfseries \@author}
 \end{flushright}%
 \vskip 174\p@
 \parindent \z@
 \includegraphics[width=4.5cm]{logo_uzh}\hfill\includegraphics[width=5cm]{logo_hasel_bw}
 \endgroup
 \clearpage\thispagestyle{empty}
 \normalfont
 \vspace*{\fill}
 \noindent
 \hspace{-0.9em}
 \begin{tabular}{ll}
   {\bf \@thesisType} & \\[4\p@]
   {\bf Author:} & \@author \ifemail , \@email\fi\\[4\p@]
   \ifurl
   {\bf URL:} & \@url \\[4\p@]
   \fi
   {\bf Project period:} & \@begindate \ - \@enddate \\[4\p@]
 \end{tabular}

 \vskip 4\p@
 \noindent Human Aspects of Software Engineering Lab\\[2\p@]
 \noindent Department of Informatics, University of Zurich%
}

%% chapter definition
\renewcommand\chapter{\if@openright
                        \clearpage\thispagestyle{empty}\cleardoublepage
                    \else
                        \clearpage
                    \fi
                    \thispagestyle{empty}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \hfill{\fontfamily{phv}\fontsize{18}{0}\selectfont\bfseries \@chapapp\space \thechapter}%
        \par\nobreak
        \vbox{\hrule height0.25pt width\textwidth}
        \par\nobreak
        \vskip 15\p@
      \fi
    \fi
    \interlinepenalty\@M
    \flushright{\fontfamily{phv}\fontsize{28}{30}\selectfont\bfseries #1\par}\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \interlinepenalty\@M
    \vbox{\hrule height0.4pt width\textwidth}
    \flushright{\fontfamily{phv}\fontsize{32}{34}\selectfont\bfseries #1\par}\par\nobreak
    \vskip 40\p@
  }}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.8ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\phvbold\LARGE}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.3ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\phvbold\Large}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.3ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\phvbold\large}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\phvbold\normalsize}}

%% renew table of contens to get rid of upper case header
\renewcommand\tableofcontents{%
	\if@twocolumn
		\@restonecoltrue\onecolumn
	\else
		\@restonecolfalse
	\fi
	\chapter*{\contentsname
		\@mkboth{%
			\contentsname}{\contentsname}}%
	\@starttoc{toc}%
	\if@restonecol\twocolumn\fi
}

%% new contenttable for lists and tables
\renewcommand\listoffigures{%
    \newpage
    \section*{\listfigurename}
        \@starttoc{lof}%
}
\renewcommand\listoftables{%
    \section*{\listtablename}
        \@starttoc{lot}%
}
\renewcommand\lstlistoflistings{%
    \section*{List of \lstlistlistingname}
        \@starttoc{lol}%
}

%% renew bibliography chapter to get rid of upper case header
\renewcommand\bibname{References}
%\renewcommand\bibsection{\chapter*{\bibname\@mkboth{\bibname}{\bibname}}}

\newenvironment{abstract}{%
  \chapter*{Abstract}}
  {}

\newenvironment{zusammenfassung}{%
  \chapter*{Zusammenfassung}}{}

\newenvironment{acknowledgements}{%
  \chapter*{Acknowledgements}}{}


\endinput
