
\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{ifi_brief}[2007/02/20 IfI Brief 1.0]

\usepackage[T1]{fontenc}
\usepackage{graphicx}
\renewcommand{\sfdefault}{pfr}

\def\@ifiplace{Z\"{u}rich}
\def\@ifiland{Schweiz}
\def\@uniname{Universit\"{a}t Z\"{u}rich}
\def\@ifiname{Institut f{\"u}r Informatik}

\def\@ifilogo{%
  \parbox[c]{24mm}{\includegraphics[height=20mm]{unisiegel}}%
  \parbox[c]{76mm}{\fontfamily{pfr}\selectfont
	\LARGE{Universit\"at Z\"urich}\\
	\normalsize{Institut f\"ur Informatik}}%
  }
\def\@ifilogoklein{%
  \parbox[c]{50mm}{\includegraphics[width=5cm]{logo_inf}
  }}
\def\@ifiaddr{%
  \parbox[t]{50mm}{%
    \fontfamily{pfr}\selectfont%
    \small\raggedleft%
    ~\\[15mm]
    Binzm\"uhlestrasse 14 \\
    CH-8050 Z\"urich-Oerlikon\\
    Switzerland \\
    \vspace{5mm}
    \textbf{Prof. Dr. Harald C. Gall}\\
	Software Evolution and\\ Architecture Lab\\
	\vspace{2mm}
	Phone +41 44 635 43 35\\
	Fax +41 44 635 68 09\\
	gall@ifi.unizh.ch\\
	http://seal.ifi.unizh.ch\\
  }
}

\ProcessOptions\relax

\LoadClass[10pt]{seal_article}

\setlength{\topmargin}{-19mm}
\setlength{\headheight}{19mm}
\setlength{\headsep}{20mm}
\setlength{\textwidth}{130mm}
\setlength{\textheight}{245mm}
\setlength{\footskip}{0mm}
\setlength{\oddsidemargin}{35mm}
\setlength{\evensidemargin}{\oddsidemargin}

\newcommand{\ps@firstpage}{
  \setlength{\headheight}{22mm}
  \setlength{\headsep}{4mm}
  \renewcommand{\@oddhead}{%
    \hspace*{-24mm}%
    \@ifilogo%
    \hspace*{-131mm}%
    \@ifiaddr%
    \hfill% avoids underfull hbox
  }
  \renewcommand{\@oddfoot}{\@empty}
}
\newcommand{\@smallhead}{\hspace*{-41mm}\protect\@ifilogoklein\hfill\small\fontfamily{pfr}\selectfont\bfseries\thepage}
\if@twoside
  \renewcommand{\ps@headings}{
    \renewcommand{\@oddhead}{\@smallhead}
    \renewcommand{\@evenhead}{\@oddhead}
    \renewcommand{\@oddfoot}{\@empty}
    \renewcommand{\@evenfoot}{\@empty}
  }
\else
  \renewcommand{\ps@headings}{
    \renewcommand{\@oddhead}{\@smallhead}
    \renewcommand{\@oddfoot}{\@empty}
  }
\fi
\pagestyle{headings}