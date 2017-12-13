---
---

## Agents

Use `NLGetAgentSet()` for reporting variable values of one or more agents. You will need to know the names of the variable and the name of the agent or agentset. You can only get values from one type of agent at a time.

For example, get the x and y coordinates of all of the wolves using:



~~~r
NLCommand("setup")

wolf_xy <- NLGetAgentSet(agent.var = c("pxcor", "pycor"), 
              agentset = "wolves")
~~~
{:.text-document title="{{ site.handouts[0] }}"}


~~~r
head(wolf_xy)
~~~
{:.input}
~~~
  pxcor pycor
1    12   -13
2    13   -24
3    25     6
4   -23    12
5     2   -17
6     9   -11
~~~
{:.output}

===

Set a variable value for one or more agents using `NLSetAgentSet()`.
