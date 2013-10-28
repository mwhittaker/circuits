%% Filename      : lab.cls 
%% Author(s)     : Michael Whittaker (mjw297@cornell.edu)
%%                 Udit Gupta (ug28@cornell.edu) 
%% Last Modified : 2013-10-27
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}
\LoadClass[12pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Imports
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{circuits}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fourier}
\RequirePackage{DejaVuSansMono}
\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
\RequirePackage[compact]{titlesec}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\parindent{1em}
\addtolength\parskip{0.1cm}
\setlength\fboxrule{.5mm}\setlength{\fboxsep}{1.2mm}
\newlength\boxlength\setlength\boxlength\textwidth
\addtolength\boxlength{-4mm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header and Footer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course
\newcommand{\@course}{ECE 2100}
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}

% Semester
\newcommand{\@semester}{Fall 2013}
\newcommand{\semester}[1]{\renewcommand{\@semester}{#1}}

% Lab number
\newcommand{\@labnum}{}
\newcommand{\labnum}[1]{\renewcommand{\@labnum}{#1}}

% Name
\newcommand{\@name}{}
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}

% Partner
\newcommand{\@partner}{}
\newcommand{\partner}[1]{\renewcommand{\@partner}{#1}}

% Partner 2
\newcommand{\@ppartner}{}
\newcommand{\ppartner}[1]{\renewcommand{\@ppartner}{#1}}

% Lab day
\newcommand{\@labday}{}
\newcommand{\labday}[1]{\renewcommand{\@labday}{#1}}

% Date
\renewcommand\@date{\today}
\renewcommand\date[1]{\renewcommand{\@date}{#1}}

% Title
\renewcommand\@title{}
\renewcommand\title[1]{\renewcommand{\@title}{#1}}

% Format header and Footer
\pagestyle{fancy}
\lhead{\@name{}}
\chead{}
\rhead{\@date{}}
\lfoot{\@course{}, \@semester{}, Lab \@labnum{}}
\cfoot{}
\rfoot{Page \thepage}

% Add and color the footer
\renewcommand{\footrulewidth}{3pt}

\makeatletter
\patchcmd{\footrule}{\hrule}{\color{CornellRed}\hrule}{}{}
\makeatother

% Remove header and footer from first page
\AtBeginDocument{
  \thispagestyle{empty}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\newcommand{\maketitletable}{
 \begin{tabularx}{\textwidth}{|l|X|l|X|}
    \hline
    Your Name:                           & \@name{}     & Date:    & \@date{}   \\\hline
    Lab Partner's Name:                  & \@partner{}  & Lab Day: & \@labday{} \\\hline
    $2^{\text{nd}}$ Lab Partner's Name:  & \@ppartner{} &          &            \\\hline
  \end{tabularx} 
}
\makeatother

\makeatletter
\renewcommand\maketitle{
	\vspace*{-5em}
	\begin{center}
	  {
	    \Large\bf
	    \@course{}, \@semester{}\\
	    LAB \@labnum{} Template: \@title{}
	  }
	\end{center}
	\vspace{-1em}
	\maketitletable
		\vspace{0.5em}
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parts, subparts, segments, and questions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reformat sections and subsections
\titleformat*{\section}{\bfseries}
\titleformat*{\subsection}{\bfseries}
\titleformat*{\subsubsection}{\itshape}

% Counters
\newcounter{Part}
\newcounter{Subpart}
\newcounter{Question}

% Part
\newcommand{\Part}[1]{
  \addtocounter{Part}{1}
  \setcounter{Subpart}{0}
  \section*{Part \thePart: #1}
}

% Subpart
\newcommand{\Subpart}[1]{
  \addtocounter{Subpart}{1}
  \subsection*{Part \thePart.\theSubpart: #1}
}

% Segment
\newcommand{\Segment}[1]{
  \setcounter{Question}{0}
  \subsection*{#1:}
}

% Question
\newcommand{\Question}[1]{
  \addtocounter{Question}{1}
  \subsubsection*{\theQuestion) #1}
}