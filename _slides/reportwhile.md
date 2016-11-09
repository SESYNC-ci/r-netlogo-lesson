---
---

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
1    1    49     50
2    2    51     51
3    3    52     52
4    4    51     51
5    5    53     54
6    6    53     55
~~~
{:.output}
