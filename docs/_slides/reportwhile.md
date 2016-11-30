---
---

## Report While

Instead of specifying a given number of iterations, you can use the results of a NetLogo reporter to only repeat executing commands while a reporter returns `TRUE` using `NLDoReportWhile()`. 
  

~~~r
NLCommand("setup")
sim_results <- NLDoReportWhile(condition = "any? wolves", 
                               command = "go",
                               reporter = c("ticks", "count sheep", "count wolves"),
                               as.data.frame = TRUE,
                               df.col.names = c("tick", "sheep", "wolves"))
head(sim_results)
~~~
{:.input}
~~~
  tick sheep wolves
1    1    54     47
2    2    56     47
3    3    58     48
4    4    57     47
5    5    58     46
6    6    61     49
~~~
{:.output}
