# ECE 2100: Circuits #

---

## Index ##
* **lib**
    * non-executable, general purpose MATLAB functions
* **bin**
    * executable scripts

## Purpose ##
ECE 2100 is hard! ECE 2100 labs are hard. The scripts in this repository are
designed to automate the manual and time consuming work associated with labs
(e.g. formatting plots, loading data, etc.) so that you can focus on the more
cerebral aspect of the class. Ideally, this will make the class less hard.

## Who is your father and what does he do? ##
So what does this stuff do, you ask. Well, here's a terse and high level
overview of some circuits utilities.
* **niceplot**
    * The niceplot family of functions is a set of MATLAB plotting functions
      that make, well, nice plots. They alleviate the burden of having to hold
      on, enable grids, set axes, etc.  
* **elab**
    * elab (short for ECE Lab or elaborate) generates MATLAB code to read in
      and parse LabViewer formatted data files. With this hassle out of the
      way, and with the help of niceplot, you spend more time understanding and
      analyzing plots rather than fixing bugs and managing files.
* **makelab**
    * makelab is a very simple bash script that creates a set of directories to
    * populate with lab work. It also creates a skeleton Makefile that can be
    * used to generate plots or clean the project.

## Installation ##
### niceplot ###
In order to use niceplot, you will have to permanently add lib to your MATLAB
path. After you do that, the startup.m script within lib will take care of the
rest.

### elab ###
The only thing you need for elab is python 2.7 or compatible. I also recommend
you add the entire bin directory to your path, but it's up to you.

### makelab ###
All you need is bash!

## Academic Code of Conduct ##
This repository *does not* share any information that should otherwise be kept
private. That is, this repository does not and will never contain lab
solutions, homework solutions, or any other information that would violate
Cornell's Academic Code of Conduct. The repository meant to help learning, not
cheat it. 

## Contact ##
If you notice any bugs, think up any suggestions, or want to give praise, feel
free to email me at mjw297@cornell.edu. Any and all feedback is welcome.
