---
---

## Commands

Execute commands in NetLogo using `NLCommand()`.


~~~r
NLCommand("setup")             # call the setup routine 
NLCommand("go")                # launch the model from R
~~~
{:.input}

Repeat commands using `NLDoCommand()` and specifying a number of iterations. 


~~~r
NLDoCommand(iterations = 50, "go")
~~~
{:.input}

===

It is possible to submit more than one command at once and in combination with R variables. Remember to use "setup" after changing model parameters


~~~r
init_sheep <- 50
NLCommand("set initial-number-sheep ", init_sheep, "setup")
~~~
{:.text-document title="{{ site.handouts }}"}
