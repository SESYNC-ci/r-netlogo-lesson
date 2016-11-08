---
---

Execute commands in NetLogo using `NLCommand()`.


~~~r
# NLCommand("set density 70")    # set density value
NLCommand("setup")             # call the setup routine 
NLCommand("go")                # launch the model from R
~~~
{:.input}

Repeat commands using `NLDoCommand()` and specifying a number of iterations. 


~~~r
NLDoCommand(iterations = 200, "go")
~~~
{:.input}

