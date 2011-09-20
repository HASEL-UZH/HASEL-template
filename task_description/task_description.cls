
\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{task_description}[2011/09/20 Task Description Template Class v3.0]

\usepackage[T1]{fontenc}
\usepackage{graphicx}
\renewcommand{\sfdefault}{phv}

\def\@ifiplace{Z\"{u}rich}
\def\@ifiland{Schweiz}
\def\@uniname{Universit\"{a}t Z\"{u}rich}
\def\@ifiname{Institut f{\"u}r Informatik}

\def\@uzhlogo{%
  \parbox[c]{100mm}{\includegraphics[height=20mm]{logo_uzh}}%
  }
\def\@uzhlogoklein{%
  \parbox[c]{50mm}{\includegraphics[width=4cm]{logo_uzh}
  }}
\def\@ifi{%
  \parbox[t]{100mm}{%
	~\\[13mm]
	\fontfamily{phv}\selectfont\bfseries%
    \large\raggedleft%
    \vspace*{-2mm}
    Department of Informatics
   	\hspace*{46.5mm}
    \rule{52.5mm}{2pt}
  }
}
\def\@ifiaddr{%
  \parbox[t]{50mm}{%
    \fontfamily{phv}\selectfont%
    \small\raggedleft%
    ~\\[30mm]
    Binzm\"uhlestrasse 14 \\
    CH-8050 Z\"urich-Oerlikon\\
    Switzerland \\
    \vspace{5mm}
    \textbf{Prof. Dr. Harald C. Gall}\\
	Software Evolution and\\ Architecture Lab\\
	\vspace{2mm}
	Phone +41 44 635 43 35\\
	Fax +41 44 635 68 09\\
	gall@ifi.uzh.ch\\
	http://seal.ifi.uzh.ch\\
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
    \@uzhlogo%
    \hspace*{-148mm}%
    \@ifi%
    \hspace*{-81mm}%
    \@ifiaddr%
    \hfill% avoids underfull hbox
  }
  \renewcommand{\@oddfoot}{\@empty}
}
\newcommand{\@smallhead}{\hspace*{-41mm}\protect\@uzhlogoklein\hfill\small\fontfamily{phv}\selectfont\bfseries\thepage}
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