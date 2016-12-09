---
---

## Agents

Use `NLGetAgentSet()` for reporting variable values of one or more agents. You will need to know the names of the variable and the name of the agent or agentset. You can only get values from one type of agent at a time.

For example, get the x and y coordinates of all of the wolves using:



~~~r
NLCommand("setup")
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~

~~~r
wolf_xy <- NLGetAgentSet(agent.var = c("pxcor", "pycor"), 
              agentset = "wolves")
~~~

~~~
Error in .jcall(nl.obj, "Ljava/lang/Object;", "report", .jnew("java/lang/String", : RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(wolf_xy)
~~~
{:.input}
~~~
Error in head(wolf_xy): object 'wolf_xy' not found
~~~
{:.output}

===

Set a variable value for one or more agents using `NLSetAgentSet()`.
