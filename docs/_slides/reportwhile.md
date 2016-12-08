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
{:.text-document title="{{ site.handouts }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
  tick sheep wolves
1    1    51     51
2    2    52     52
3    3    51     54
4    4    52     55
5    5    51     54
6    6    52     54
~~~
{:.output}

