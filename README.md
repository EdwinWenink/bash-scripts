# My Bash Scripts

* randomcowsay.sh

This script uses 'cowsay' and 'fortune' to let a randomly chosen ASCII figure say a random quote from the fortune program. Note that the fortune program can be extended with other quote databases.

* topdf.sh 

A script that uses pandoc to quickly convert a markdown file (.md) to pdf in the current directory. After converting, evince is called to open the pdf. This command is handy to call directly from vim (:! topdf.sh currentfilename.md).

* compilenotes.sh

I make notes in markdown. 
You can pass multiple markdown files (e.g. separate chapters) to this command. 
It assumes that the first markdown file you pass contains meta information (title, author etc. in a yaml header), all other markdown files will be appended and included in the same pdf. 
The name of the first markdown file is also used to name the resulting pdf document.
This script hardcodes a custom .latex template I made for compiling my notes, called 'notes.latex' (included in the folder containing pandoc templates).    

* reopen.sh

Opens the current directory in a new terminal (assumes urxvt currently).

* todo.sh

Simple script for creating a quick and dirty todo list in your home directory (~/todo.txt).
Assuming you alias `todo.sh` as 'todo':
Usage: `todo something` adds something to the list.
`todo` without argument shows the current list, with numbered entries.

* done.sh

Use in combination with todo.sh. To complete a task and move it to the 'done' list, pass the entry number as an argument. To complete task 4: `done.sh 4`. N.B. do not alias this script as 'done', as this will break your bash by overriding a reserved bash keyword. 
I aliased it as 'did', so that I can type in the terminal: `did 4`. 
To show done tasks, type `done.sh` without arguments. This assumes you have 'cowsay' installed.

* dualmonitor.sh

Small script for setting up dual monitors. 

* openAndDisown.sh

A script I invoke in my terminal with the alias 'oad' when I want to open a program disowned from the terminal it is called in. Unfinished: does not parse arguments, so only handles simple arguments, or more arguments passed as a single string.

* spotify\_status.sh

Script that returns what spotify song you are currently playing (or if spotify is off).
Did not write this script myself, retrieved it from a github thread on polybar, the statusbar I use for i3.

* systeminfo.sh

	Doesn't do much. Shows uptime and connected users. Why not?
