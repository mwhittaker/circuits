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
\RequirePackage[letterpaper,margin=0.75in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{tabularx}
\RequirePackage{tabulary}
\RequirePackage{amsmath}
\RequirePackage[compact]{titlesec}
\RequirePackage{calc}

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

% Document type
\newcommand{\@doctype}{Lab}
\newcommand{\doctype}[1]{\renewcommand{\@doctype}{#1}}

% Format header and Footer
\pagestyle{fancy}
\lhead{\@name{}}
\chead{}
\rhead{\@date{}}
\lfoot{\@course{}, \@semester{}, \@doctype{} \@labnum{}}
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
  \small
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tables and images
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% New column types for tabularx
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}

% Default height when image is not found
\newcommand{\noImageHeight}{6cm}

% Image directory path
\newcommand{\imgpath}{../out}

% Includes an image if it exists, otherwise displays text
% @param #1 Image filename
% @param #2 Text
\makeatletter
\newcommand{\tryplot}[2]{
  \IfFileExists{#1}
    {\raisebox{-0.5\totalheight}{\includegraphics[width=\linewidth]{#1}}}
    {\parbox[c][\noImageHeight{}][c]{\linewidth}{\center #2\\\texttt{<#1>}}} 
}
\makeatother

% tryplot in multicolumn
% @param #1 Number of columns
% @param #2 Leading |
% @param #3 Filename
% @param #4 Text
\makeatletter
\newcommand{\mtryplot}[4]{
  \multicolumn{#1}{#2C|}{
    \IfFileExists{#3}
      {\raisebox{-0.5\totalheight}{\includegraphics[width=#1\linewidth + #1\columnsep]{#3}}}
      {\parbox[c][\noImageHeight{}][c]{#1\linewidth + #1\columnsep}{\center #4\\\texttt{<#3>}}} 
  }
}
\makeatother

% Increase table padding
\renewcommand{\arraystretch}{1.2}