---
---

## Agents

Use `NLGetAgentSet()` for reporting variable values of one or more agents as a data frame, list, or vector. You will need to know the names of the variable and the name of the agent or agentset. You can only get values from one type of agent.

Get the x and y coordinates of all of the wolves:



~~~r
NLCommand("setup")

wolf_xy <- NLGetAgentSet(agent.var = c("pxcor", "pycor"), 
              agentset = "wolves")

head(wolf_xy)
~~~
{:.input}
~~~
  pxcor pycor
1    19   -12
2    19    -7
3   -20    17
4    24   -18
5     8    16
6     8   -23
~~~
{:.output}

Set a variable value for one or more agents using `NLSetAgentSet()`.
