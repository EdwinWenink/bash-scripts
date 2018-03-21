# My Bash Scripts

* randomcowsay.sh

	This script uses 'cowsay' and 'fortune' to let a randomly chosen ASCII figure say a random quote from the fortune program. Note that the fortune program can be extended with other quote databases.

* topdf.sh 

	A script that uses pandoc to quickly convert a markdown file (.md) to pdf in the current directory. After converting, evince is called to open the pdf. This commant is handy to call directly from vim (:! topdf.sh currentfilename.md).

* openAndDisown.sh

	A script I invoke in my terminal with the alias 'oad' when I want to open a program disowned from the terminal it is called in. Unfinished: does not parse arguments, so only handles simple arguments, or more arguments passed as a single string.

* systeminfo.sh

	Doesn't do much. Shows uptime and connected users. Why not?
