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
{:.text-document title="{{ site.handouts }}"}


~~~r
head(wolf_xy)
~~~
{:.input}
~~~
  pxcor pycor
1     2   -17
2    25     4
3   -11    18
4    -7   -21
5   -20    17
6    24     0
~~~
{:.output}

===

Set a variable value for one or more agents using `NLSetAgentSet()`.
