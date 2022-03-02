	% HASEL REPORT DOCUMENT CLASS -- version 2.0 (20-Sep-2011)
% Beat Fluri, Matthias Hert LaTeX2e support for Special Articles
%
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
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{hasel_report}[2011/09/20 v2.0
^^J LaTeX document class for HASEL style articles]

\LoadClass[10pt,a4paper]{article}
\RequirePackage{graphicx}
\RequirePackage{listings}

\renewcommand{\rmdefault}{ppl}
\renewcommand{\sfdefault}{phv}
\renewcommand{\ttdefault}{pcr}

% Ragged bottom for the actual page (from LNCS)
\def\thisbottomragged{\def\@textbottom{\vskip\z@ plus.0001fil
\global\let\@textbottom\relax}}

\setlength{\textwidth}{15cm}
\setlength{\textheight}{21.3cm}

\setlength\oddsidemargin   {11\p@}
\setlength\evensidemargin  {11\p@}
\setlength\marginparwidth  {90\p@}

\setlength\headsep   {16\p@}

\setlength\footnotesep{7.7\p@}
\setlength\textfloatsep{8mm\@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {8mm\@plus 2\p@ \@minus 2\p@}

\setcounter{secnumdepth}{2}

\def\ps@haselheadings{\let\@mkboth\@gobbletwo
   \def\@oddfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \def\@evenfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \let\@evenhead\@empty\let\@oddhead\@empty}

\ps@haselheadings

\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {12\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\fontfamily{phv}\selectfont\Large\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {8\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\fontfamily{phv}\selectfont\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {6\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\fontfamily{phv}\selectfont\fontsize{9}{0}\bfseries\boldmath}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                       {-12\p@ \@plus -4\p@ \@minus -4\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\fontfamily{phv}\selectfont\itshape}}
\renewcommand\subparagraph[1]{\typeout{LLNCS warning: You should not use
                  \string\subparagraph\space with this class}\vskip0.5cm
You should not use \verb|\subparagraph| with this class.\vskip0.5cm}

% list, itemize, and enumerate margin definitions (from LNCS)
\setlength\leftmargini  {17\p@}
\setlength\leftmargin    {\leftmargini}
\setlength\leftmarginii  {\leftmargini}
\setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\def\@listI{\leftmargin\leftmargini
            \parsep 0\p@ \@plus1\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep0\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus2\p@ \@minus\p@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@}

% smaller dot for first item in itemize
\renewcommand\labelitemi{\tiny\raisebox{1.5pt}{$\m@th\bullet$}}

%%\def\fnum@figure{{\bf\fontfamily{phv}\selectfont \figurename\nobreakspace\thefigure}}
%%\def\fnum@table{{\fontfamily{phv}\selectfont\bf \tablename\nobreakspace\thetable}}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bfseries\fontfamily{phv}\selectfont{#1}}: \fontfamily{phv}\selectfont{#2}}%
  \ifdim \wd\@tempboxa >\hsize
    {\bfseries\fontfamily{phv}\selectfont{#1}}: \fontfamily{phv}\selectfont{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\box\@tempboxa}%
  \fi
  \vskip\belowcaptionskip}

\def\subtitle#1{\gdef\@subtitle{#1}}
\def\@subtitle{\@latex@error{No \noexpand\subtitle given}\@ehc}
\renewcommand\maketitle{%
  \newpage
  \vspace*{-3cm}
  \begingroup
  \parindent \z@
  \includegraphics[width=4.5cm]{logo_uzh}\hfill\includegraphics[width=5cm]{logo_hasel_bw}
  \vskip 48\p@
  \vskip 3cm
  \hfill{\fontfamily{phv}\selectfont\bfseries\Huge\@title}
  \\[-5\p@]
  \vbox{\hrule height0.25pt width\textwidth}
  \vskip 2\p@
  \hfill{\fontfamily{phv}\selectfont\Large\@subtitle}\par\nobreak
  \vskip 40\p@
  \endgroup
}
%
\def\@maketitle{\newpage
 \let\newline\\
  \begingroup
  \parindent \z@
  \includegraphics[width=4cm]{logo_uzh}\hfill\includegraphics[width=4.5cm]{logo_hasel_bw}
  \vskip 45\p@
  \hfill{\fontfamily{phv}\selectfont\bfseries\Huge\@title}
  \\[-5\p@]
  \vbox{\hrule height0.25pt width\textwidth}
  \vskip 2\p@
  \hfill{\fontfamily{phv}\selectfont\Large\@subtitle}\par\nobreak
  \vskip 40\p@
  \endgroup
}

\endinput
