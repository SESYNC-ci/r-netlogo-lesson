---
---

## Agents

Use `NLGetAgentSet()` for reporting variable values of one or more agents as a data frame, list, or vector. You will need to know the names of the variable and the name of the agent or agentset. You can only get values from one type of agent.

Get the x and y coordinates of all of the wolves:



~~~r
wolf_xy <- NLGetAgentSet(agent.var = c("pxcor", "pycor"), 
              agentset = "wolves")
~~~
{:.input}
~~~
Error in NLGetAgentSet(agent.var = c("pxcor", "pycor"), agentset = "wolves"): The requested agentset is empty
~~~
{:.input}
~~~r
head(wolf_xy)
~~~
{:.input}
~~~
  pxcor pycor
1    -7   -19
2     3     9
3    -7   -12
4     6    11
5     1    19
6    18   -23
~~~
{:.output}
