---
---

## Commands

Execute commands in NetLogo using `NLCommand()`.


~~~r
NLCommand("setup")             # call the setup routine 
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~

~~~r
NLCommand("go")                # launch the model from R
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}

Repeat commands using `NLDoCommand()` and specifying a number of iterations. 


~~~r
NLDoCommand(iterations = 50, "go")
~~~

~~~
Error in .jcall(nl.obj, "V", "doCommand", .jnew("java/lang/String", command), : RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}

===

It is possible to submit more than one command at once and in combination with R variables.


~~~r
init_sheep <- 50
NLCommand("set initial-number-sheep ", init_sheep, "setup")
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}

Remember to call the "setup" routine after changing model parameters.
