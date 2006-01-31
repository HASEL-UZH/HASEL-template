%%
%% This is file `seal_thesis.cls'.
%%
%% This file is the seal thesis class files. All thesis at seal should
%% be written using this style file.
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
\ProvidesClass{seal_thesis}
              [2005/02/10 v1.0e
 seal LaTeX thesis class]

\LoadClass[10pt,twoside,a4paper]{book}
\RequirePackage{graphicx}
\RequirePackage{listings}
\RequirePackage{fancyhdr}

\newif\ifformal
\formalfalse

\DeclareOption{formal}{%
\formaltrue
}
\ProcessOptions
% Using Palatino font
\renewcommand{\rmdefault}{ppl}
\renewcommand{\sfdefault}{phv}
\renewcommand{\ttdefault}{pcr}

\setlength{\textwidth}{15cm}
\setlength{\textheight}{21.3cm}
\setlength{\evensidemargin}{-6mm}
\addtolength{\oddsidemargin}{4mm}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ \ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}
\fancyhf{}
\fancyhead[LE,RO]{\fontfamily{pfr}\selectfont\small\bfseries\thepage}
\fancyhead[LO]{\fontfamily{pfr}\selectfont\rightmark}
\fancyhead[RE]{\fontfamily{pfr}\selectfont\leftmark}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}


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

\renewcommand\maketitle{%
  \ifformal
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
  \fontfamily{pfr}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{24}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip -2\p@
    {\fontsize{9}{0}\selectfont \@date}
    \vskip 20\p@
    {\fontfamily{pfr}\fontsize{48}{0}\selectfont\bfseries \@title}
    \ifsubtitle
      \vskip 5\p@
      {\fontsize{24}{0}\selectfont \@subtitle}
    \fi
    \vfill
    {\fontsize{24}{0}\selectfont\bfseries \@author}
    \vskip 2\p@
    {\fontsize{9}{0}\selectfont of \@home,\ \@country \ (\@legi)}
    \vskip 35\p@
    {\fontsize{10}{0}\selectfont\bfseries supervised by}
    \vskip 4\p@
    {\fontsize{12}{0}\selectfont \@prof\\[2\p@] \@assistent}
 \end{flushright}%
 \vskip 87\p@
 \parindent \z@
 \includegraphics[width=7cm]{logo_inf}\hfill\includegraphics[width=3.5cm]{seal_bw}
 \endgroup
 \clearpage\thispagestyle{empty}\cleardoublepage
  \fi
  \thispagestyle{empty}
  \begingroup
  \fontfamily{pfr}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{24}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip 31\p@
    {\fontsize{48}{0}\selectfont\bfseries \@title}
    \ifsubtitle
      \vskip 5\p@
      {\fontsize{24}{0}\selectfont \@subtitle}
    \fi
    \vfill
    {\fontsize{24}{0}\selectfont\bfseries \@author}
 \end{flushright}%
 \vskip 174\p@
 \parindent \z@
 \includegraphics[width=7cm]{logo_inf}\hfill\includegraphics[width=3.5cm]{seal_bw}
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
 \noindent Software Evolution \& Architecture Lab\\[2\p@]
 \noindent Department of Informatics, University of Zurich%
}
\def\@maketitle{%
  \newpage
  \thispagestyle{empty}
  \begingroup
  \fontfamily{pfr}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{24}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip -2\p@
    {\fontsize{9}{0}\selectfont \@date}
    \vskip 20\p@
    {\fontsize{48}{0}\selectfont\bfseries \@title}
    \ifsubtitle
      \vskip 5\p@
      {\fontsize{24}{0}\selectfont \@subtitle}
    \fi
    \vfill
    {\fontsize{24}{0}\selectfont\bfseries \@author}
    \vskip 2\p@
    {\fontsize{9}{0}\selectfont of \@home,\ \@country \ (\@legi)}
    \vskip 35\p@
    {\fontsize{10}{0}\selectfont\bfseries supervised by}
    \vskip 4\p@
    {\fontsize{12}{0}\selectfont \@prof\\[2\p@] \@assistent}
 \end{flushright}%
 \vskip 87\p@
 \parindent \z@
 \includegraphics[width=7cm]{logo_inf}\hfill\includegraphics[width=3.5cm]{seal_bw}
 \endgroup
 \clearpage\thispagestyle{empty}\cleardoublepage
  \thispagestyle{empty}
  \begingroup
  \fontfamily{pfr}\selectfont
  \begin{flushright}%
    \vspace*{50\p@}
    {\fontsize{24}{0}\selectfont \@thesisType}
    \vskip -9\p@
    \vbox{\hrule height0.25pt width\textwidth}
    \vskip 31\p@
    {\fontsize{48}{0}\selectfont\bfseries \@title}
    \ifsubtitle
      \vskip 5\p@
      {\fontsize{24}{0}\selectfont \@subtitle}
    \fi
    \vfill
    {\fontsize{24}{0}\selectfont\bfseries \@author}
 \end{flushright}%
 \vskip 174\p@
 \parindent \z@
 \includegraphics[width=7cm]{logo_inf}\hfill\includegraphics[width=3.5cm]{seal_bw}
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
 \noindent Software Evolution \& Architecture Lab\\[2\p@]
 \noindent Department of Informatics, University of Zurich
}

%\def\ps@sealheadings{\let\@mkboth\@gobbletwo
%   	\let\@oddfoot\@empty\let\@evenfoot\@empty
%   	\let\@mkboth\markboth
%	\def\@evenhead{\vbox{\hbox
%		{\llap{\parbox[b]{\textwidth}{\fontfamily{pfr}\selectfont\bfseries\thepage}}\hfil
%		{\rlap{\parbox[b]{50pt}{\fontfamily{pfr}\selectfont\leftmark}}}}
%         \hrule height0.4pt width\textwidth}}
%   \def\@oddhead{\vbox{\hbox to \textwidth{%
%         \fontfamily{pfr}\selectfont{\rightmark}\hfil\bfseries\thepage}\vskip 1.5pt plus 0pt minus 1.5pt%
%         \hrule height0.4pt width\textwidth}}
%   \def\chaptermark##1{\markboth{\@chapapp \ \thechapter.\ \ ##1}{}}%
%   \def\sectionmark##1{\markright{\thesection \ \ ##1}}}

%\ps@fancyheadings

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
        \hfill{\fontfamily{pfr}\fontsize{22}{0}\selectfont\bfseries \@chapapp\space \thechapter}%
        \par\nobreak
        \vbox{\hrule height0.25pt width\textwidth}
        \par\nobreak
        \vskip 15\p@
      \fi
    \fi
    \interlinepenalty\@M
    \flushright{\fontfamily{pfr}\fontsize{32}{0}\selectfont\bfseries #1}\par\nobreak
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
    \flushright{\fontfamily{pfr}\fontsize{32}{0}\selectfont\bfseries #1}\par\nobreak
    \vskip 40\p@
  }}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.8ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\fontfamily{pfr}\selectfont\LARGE\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.3ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\fontfamily{pfr}\selectfont\Large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.3ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\fontfamily{pfr}\selectfont\large\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}

\renewcommand\labelitemi{\tiny\raisebox{1.5pt}{$\m@th\bullet$}}

%%\def\fnum@figure{{\bfseries\fontfamily{pfr}\selectfont %%\figurename\nobreakspace\thefigure}}
%%\def\fnum@table{{\bfseries\fontfamily{pfr}\selectfont %%\tablename\nobreakspace\thetable}}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bfseries\fontfamily{pfr}\selectfont{#1}}: \fontfamily{pfr}\selectfont{#2}}%
  \ifdim \wd\@tempboxa >\hsize
    {\bfseries\fontfamily{pfr}\selectfont{#1}}: \fontfamily{pfr}\selectfont{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\box\@tempboxa}%
  \fi
  \vskip\belowcaptionskip}

% new contenttable for lists and tables
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

\renewcommand\bibname{References}

\newenvironment{abstract}{%
  \chapter*{Abstract}}
  {}

\newenvironment{zusammenfassung}{%
  \chapter*{Zusammenfassung}}{}

\newenvironment{acknowledgements}{%
  \chapter*{Acknowledgements}}{}


\endinput
