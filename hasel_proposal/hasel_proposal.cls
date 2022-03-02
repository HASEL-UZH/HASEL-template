% HASEL PROPOSAL DOCUMENT CLASS -- version 2.0 (20-Sep-2011)
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
\ProvidesClass{hasel_proposal}[2011/09/20 v2.0
LaTeX document class for HASEL style phd proposals]

\LoadClass[10pt,a4paper,fleqn]{article}
\RequirePackage[english]{babel}
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{graphicx}
\RequirePackage{listings}
\RequirePackage{xspace}
\RequirePackage[T1]{fontenc}

\ProcessOptions

%% paper dimensions and lengths
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\textwidth}{157.5mm}
\setlength{\textheight}{225.75mm}
\addtolength{\textheight}{-\headheight}
\addtolength{\textheight}{-\headsep}
\setlength{\topmargin}{26.25mm}
\setlength{\evensidemargin}{28mm}
\setlength{\oddsidemargin}{25mm}
\setlength{\topskip}{0pt}
\setlength{\topsep}{2em}
\setlength{\floatsep}{1.5em plus 2pt minus 2pt}
\setlength{\textfloatsep}{2.5em plus 2pt minus 4pt}
\setlength{\intextsep}{2em}
\setlength{\doublerulesep}{0pt}

%% font definitions for latex
%default fonts
\renewcommand{\rmdefault}{ppl}
\renewcommand{\sfdefault}{phv}
\renewcommand{\ttdefault}{pcr}
\newcommand{\phvbold}{\sffamily\bfseries}

% title page
\newcommand\phvtitle{\fontfamily{phv}\fontsize{32}{42}\selectfont\bfseries}
\newcommand\phvtext{\fontfamily{phv}\fontsize{13}{0}\selectfont}
\newcommand\phvname{\fontfamily{phv}\fontsize{15}{16}\selectfont\bfseries}
%% end font definitions

%% heading
\def\ps@haselheadings{\let\@mkboth\@gobbletwo
   \def\@oddfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \def\@evenfoot{\hfil\fontfamily{phv}\selectfont\small\bfseries\thepage}
   \let\@evenhead\@empty\let\@oddhead\@empty}

\ps@haselheadings
%% end heading

%% titlepage
% variables
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\home#1{\gdef\@home{#1}}
\def\country#1{\gdef\@country{#1}}

\renewcommand\maketitle{%
%
\thispagestyle{empty}
\setlength{\baselineskip}{15pt}
\setlength{\parindent}{0pt}

{\phvtitle \@title}\\[7pt]
{\sffamily\LARGE \@subtitle}

\vspace{2cm}
{\phvbold\large Research Proposal}

\vfill
{\phvtext
by\\[2pt]
{\phvname \@author}
}

\vspace{.8\baselineskip}
{\phvtext
from\\
\@home, \@country
}

\vfill
{\phvbold Advisor} \\
{\phvtext
Prof. Dr. Thomas Fritz
}

\vfill
{\phvtext \@date}

\vfill
\includegraphics[width=4.5cm]{logo_uzh}
\hspace{\fill}
\includegraphics[width=5cm]{logo_hasel_bw}
\clearpage
\thispagestyle{empty}
\vspace*{\fill}
\clearpage
\setcounter{page}{1}
}
%% end titlepage

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
%% end table of contents header

%% section definitions
\renewcommand\section{%
	\@startsection{section}{1}{\z@}%
	{-3.8ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\phvbold\LARGE}%
}
\renewcommand\subsection{%
	\@startsection{subsection}{2}{\z@}%
	{-3.3ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\phvbold\Large}%
}
\renewcommand\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}%
	{-3.3ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\phvbold\large}%
}
\renewcommand\paragraph{%
	\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\phvbold\normalsize}%
}
%% end section definitions

\renewcommand\labelitemi{\tiny\raisebox{1.5pt}{$\m@th\bullet$}}

%% captions for figures, listings, and tables
\long\def\@makecaption#1#2{%
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\phvbold{\small #1}}: \sffamily{\small #2}}%
	\ifdim \wd\@tempboxa >\hsize
		{\phvbold{\small #1}}: {\sffamily{\small #2}}\par
	\else
		\global \@minipagefalse
		\hb@xt@\hsize{\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip%
}
%% end caption for figures, listings, and tables

%% new contenttable for figures, lists, and tables
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
%% end new contenttable for figures, lists, and tables

% \newenvironment{abstract}{%
%   \chapter*{Abstract}\addcontentsline{toc}{chapter}{Abstract}}{}
% 
% \newenvironment{zusammenfassung}{%
%   \chapter*{Zusammenfassung}\addcontentsline{toc}{chapter}{Zusammenfassung}}{}
% 
% \newenvironment{acknowledgements}{%
%   \chapter*{Acknowledgements}\addcontentsline{toc}{chapter}{Acknowledgements}}{}

%% configuration for listings
\newlength\origabovecaptionskip
\setlength\origabovecaptionskip{\abovecaptionskip}
\newlength\origbelowcaptionskip
\setlength\origbelowcaptionskip{\belowcaptionskip}

% colors for listing (eclipse style)
\definecolor{stringcolor}{RGB}{42,0,255}
\definecolor{keywordcolor}{RGB}{127,0,85}
\definecolor{javadoccolor}{RGB}{63,95,191}
\definecolor{commentcolor}{RGB}{65,127,95}
\definecolor{doccolor}{RGB}{63,95,191}

\lstset{language=Java}
\lstset{columns=fullflexible}
\lstset{abovecaptionskip=\origabovecaptionskip}
\lstset{belowcaptionskip=-1.5ex}
\lstset{xleftmargin=\leftmargin}
\lstset{basicstyle=\ttfamily\small}
\lstset{keywordstyle=\color{keywordcolor}\bfseries}
\lstset{commentstyle=\color{commentcolor}}
\lstset{morecomment=[s][\color{doccolor}]{/**}{*/}}
\lstset{stringstyle=\color{stringcolor}}
\lstset{tabsize=4}
\lstset{showstringspaces=false}
\lstset{lineskip=1.5pt}
\lstset{captionpos=b}

\newcommand\lst{\lstinline}
%% end configuration for listings

%% useful commands
\newcommand{\note}[2]{%
	\fbox{\bfseries\sffamily\scriptsize#1}
	{\sf\small$\triangleright$\textit{#2}$\triangleleft$}
}
\newcommand{\changedistiller}{\textsc{Change\-Distiller}\xspace}
\newcommand{\evolizer}{\textsc{Evolizer}\xspace}
\newcommand{\zbinder}{\textsc{ZBinder}\xspace}

\newcommand{\lstref}[1]{Listing~\ref{#1}\xspace}
\newcommand{\algref}[1]{Algorithm~\ref{#1}\xspace}
\newcommand{\chpref}[1]{Chapter~\ref{#1}\xspace}
\newcommand{\appref}[1]{Appendix~\ref{#1}\xspace}
\newcommand{\secref}[1]{Section~\ref{#1}\xspace}
\newcommand{\figref}[1]{Figure~\ref{#1}\xspace}
\newcommand{\tabref}[1]{Table~\ref{#1}\xspace}
\newcommand{\ie}{\emph{i.e.},\xspace}
\newcommand{\eg}{\emph{e.g.},\xspace}
\newcommand{\etal}{\emph{et al.}\xspace}
%% end useful commands

\endinput