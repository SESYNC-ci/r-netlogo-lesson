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
~~~
{:.text-document title="{{ site.handouts[0] }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
  tick sheep wolves
1    1    49     57
2    2    50     60
3    3    52     55
4    4    57     52
5    5    57     51
6    6    58     51
~~~
{:.output}

