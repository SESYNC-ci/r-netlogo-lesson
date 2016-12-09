---
---

## Reporting

Use `NLReport()` to get a value or list of values.


~~~r
NLReport("count sheep")
~~~
{:.input}
~~~
Error in .jcall(nl.obj, "Ljava/lang/Object;", "report", .jnew("java/lang/String", : RcallMethod: invalid object parameter
~~~
{:.output}

===

Or use `NLDoReport()` to repeat a command and reporter a defined number of times. This function is like a combination of `NLReport()` and `NLDoCommand()`.


~~~r
NLDoReport(iterations = 5, command = "go", reporter = "count sheep")
~~~
{:.input}
~~~
Error in .jcall(nl.obj, "[Ljava/lang/Object;", "doReport", .jnew("java/lang/String", : RcallMethod: invalid object parameter
~~~
{:.output}

===

The default output of `NLDoReport()` is an R list, or you can specify that the output should be a data frame with columns named in the `df.col.names` argument. Each iteration becomes a row in the data frame. You can use vector of strings to get the results of multiple NetLogo reporters. 


~~~r
NLCommand("setup")
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~

~~~r
sheep_count <- NLDoReport(iterations = 100, 
                          command = "go", 
                          reporter = c("ticks", "count sheep", "count wolves"),
                          as.data.frame = TRUE,
                          df.col.names = c("tick", "sheep", "wolves"))
~~~

~~~
Error in .jcall(nl.obj, "[Ljava/lang/Object;", "doReport", .jnew("java/lang/String", : RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
tail(sheep_count)
~~~
{:.input}
~~~
Error in tail(sheep_count): object 'sheep_count' not found
~~~
{:.output}

