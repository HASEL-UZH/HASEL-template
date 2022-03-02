
\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{hasel_task}[2011/09/20 Task Template Class v3.0]

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
    \textbf{Prof. Dr. Thomas Fritz}\\
	Human Aspects of\\ Software Engineering Lab\\
	\vspace{2mm}
	Phone +41 44 635 67 32\\
	Fax +41 44 635 71 48\\
	fritz@ifi.uzh.ch\\
	https://ifi.uzh.ch\\
  }
}

\ProcessOptions\relax

\LoadClass[10pt]{hasel_article}

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