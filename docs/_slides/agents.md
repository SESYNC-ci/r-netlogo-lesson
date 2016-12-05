---
---

## Agents

Use `NLGetAgentSet()` for reporting variable values of one or more agents as a data frame, list, or vector. You will need to know the names of the variable and the name of the agent or agentset. You can only get values from one type of agent.

Get the x and y coordinates of all of the wolves:



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
1    22    -8
2    24    20
3   -22    -5
4   -20   -23
5    -7    21
6    16     0
~~~
{:.output}

Set a variable value for one or more agents using `NLSetAgentSet()`.
