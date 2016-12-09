---
---

## Report While

Instead of specifying a given number of iterations, you can use the results of a NetLogo reporter to only repeat executing commands while a reporter returns `TRUE` using `NLDoReportWhile()`. 
  

~~~r
NLCommand("setup")
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~

~~~r
sim_results <- NLDoReportWhile(condition = "any? wolves", 
                               command = "go",
                               reporter = c("ticks", "count sheep", "count wolves"),
                               as.data.frame = TRUE,
                               df.col.names = c("tick", "sheep", "wolves"))
~~~

~~~
Error in .jcall(nl.obj, "[Ljava/lang/Object;", "doReportWhile", .jnew("java/lang/String", : RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
Error in head(sim_results): object 'sim_results' not found
~~~
{:.output}

