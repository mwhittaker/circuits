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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\parindent{1em}
\addtolength\parskip{0.1cm}
\setlength\fboxrule{.5mm}\setlength{\fboxsep}{1.2mm}
\newlength\boxlength\setlength\boxlength\textwidth
\addtolength\boxlength{-4mm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@psnum{}
\newcommand\@psname{}
\newcommand\psname[1]{\renewcommand\@psname{#1}}
\newcommand\psnum[1]{\renewcommand\@psnum{#1}}

\newcommand\instructions{\section*{Instructions}}

\renewcommand\@date{}
\renewcommand\date[1]{\renewcommand{\@date}{#1}}
\newcommand\psdue[1]{\date{Due at 11:59 PM, #1}}

\newcommand\@versionnumber{}
\newcommand\versionnumber[1]{\renewcommand{\@versionnumber}{#1}}

\newcommand\@datemodified{}
\newcommand\datemodified[1]{\renewcommand{\@datemodified}{#1}}
\datemodified{\today}

\renewcommand\maketitle{
	\vspace*{-5em}
	\begin{center}\framebox{\parbox{\boxlength}{\bf
		Object-Oriented Programming and Data Structures\hfill Problem Set \@psnum \@psname\\ 
		CS 2110, Fall 2013\hfill \@date \\
                Version: \@versionnumber \hfill Last Modified: \@datemodified
	}}
	\end{center}
	\vspace{1em}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Standard Instructions %%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\standardinstructions}{
  \section*{Preamble}
  Please read the whole handout before starting. At the end of this handout, we will tell you what and how to submit.
  We will ask you for the time spent on this assignment, so \textit{please keep track of the time you spent on it}.

  \subsection*{Collaboration Policy and Academic Integrity}
  You may do this assignment with one other person. Both members of the group should get on the CMS and do 
  what is required to form a group well before the assignment due date. Both must do something to form the group:
  one proposes, the other accepts.

  People in a group must \textit{work together}. It is against the rules for one person to do some programming on this assignment without the other person sitting nearby and helping. Take turns ``driving'' -- using the keyboard and mouse.
With the exception of your CMS-registered group partner, you may not look at anyone else's code, in any form,
or show your code to anyone else (except the course staff), in any form. You may not show or give your code to another student in the class.
  
  \subsection*{Code Style}
  Finally, please pay attention to style. Refer to the
  \link{http://www.cs.cornell.edu/Courses/cs2110/2013fa/style_guidelines.html}{CS 2110 style guide} and lecture notes. Ugly code that is
  functionally correct may still lose points. Take the extra time to
  think out the problems and find the most elegant solutions before
  coding them up. Good programming style is important for all assignments
  throughout the semester.
}

%% TODO:
%%   Write a macro that generates the files to submit. Usage:
%%   \maketosubmit{<list-of-files>}

% Problems and solutions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{problem}
\newcounter{exercise}

\newcommand\bracket[1]{\ifx#1\empty\else[#1]\fi}

\newcommand\problem[2]{
	\addtocounter{problem}{1}
	\setcounter{exercise}{0}
	\section*{Problem \theproblem: #1 {\normalsize(#2 pts)}}
}

\newcommand\exercise[1]{
	\addtocounter{exercise}{1}
	\subsection*{Exercise \theexercise}
}

\newcommand\examples{\subsubsection*{Examples}}
