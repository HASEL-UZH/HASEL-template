% HASEL ARTICLE DOCUMENT CLASS -- version 3.0 (16-Sep-2011)
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
\ProvidesClass{hasel_article}[2011/09/16 v3.0
^^J LaTeX document class for HASEL style articles]

\LoadClass[10pt,a4paper,fleqn]{article}
\RequirePackage{hasel}

%% paper dimensions and lengths
\setlength{\textwidth}{15cm}
\setlength{\textheight}{21.3cm}
\setlength{\topsep}{1.5em}
\setlength{\textfloatsep}{1.5em}
\setlength{\intextsep}{1.5em}

\setlength\oddsidemargin   {11\p@}
\setlength\evensidemargin  {11\p@}
\setlength\marginparwidth  {90\p@}

\setcounter{secnumdepth}{2}

%% header/footer
\def\ps@haselheadings{\let\@mkboth\@gobbletwo
   \def\@oddfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \def\@evenfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \let\@evenhead\@empty\let\@oddhead\@empty}
\ps@haselheadings

%% section redefinitions
\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {12\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\phvbold\Large}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {8\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\phvbold\large}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {6\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\phvbold}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                       {-12\p@ \@plus -4\p@ \@minus -4\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\phvbold\small}}

% make list for articles a little tighter
\def\@listI{\leftmargin\leftmargini
            \parsep 0\p@ \@plus1\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep2\p@}
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

%% subtitle
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
  \begin{flushright}
  {\phvbold\huge\@title}
  \end{flushright}
  \vskip -10\p@
  \vbox{\hrule height0.25pt width\textwidth}
  \begin{flushright}
  \vskip -6\p@
  {\sffamily\Large\@subtitle}\par\nobreak
  \end{flushright}
  \vskip 40\p@
  \endgroup
}
%
\def\@maketitle{\newpage
 \let\newline\\
  \begingroup
  \parindent \z@
  \includegraphics[width=4.5cm]{logo_uzh}\hfill\includegraphics[width=5cm]{logo_hasel_bw}
  \vskip 48\p@
  \vskip 3cm
  \begin{flushright}
 {\phvbold\Huge\@title}
  \end{flushright}
  \vskip -10\p@
  \vbox{\hrule height0.25pt width\textwidth}
  \begin{flushright}
  \vskip -8\p@
  {\sffamily\Large\@subtitle}\par\nobreak
  \end{flushright}
  \vskip 40\p@
  \endgroup
}

\endinput
