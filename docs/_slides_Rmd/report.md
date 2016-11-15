---
---

## Reporting

Use `NLReport()` to get a value or list of values.


~~~r
NLReport("count sheep")
~~~
{:.input}
~~~
[1] 50
~~~
{:.output}

Or use `NLDoReport()` to repeat a command and reporter a defined number of times. This function is like a combination of `NLReport()` and `NLDoCommand()`.


~~~r
NLDoReport(iterations = 5, command = "go", reporter = "count sheep")
~~~
{:.input}
~~~
[[1]]
[1] 50

[[2]]
[1] 52

[[3]]
[1] 52

[[4]]
[1] 52

[[5]]
[1] 51
~~~
{:.output}

===

The default output of `NLDoReport()` is an R list, or you can specify that the output should be a data frame with columns named in the `df.col.names` argument. You can use vector of strings to get the results of multiple NetLogo reporters. 


~~~r
NLCommand("setup")
sheep_count <- NLDoReport(iterations = 100, 
                          command = "go", 
                          reporter = c("ticks", "count sheep", "count wolves"),
                          as.data.frame = TRUE,
                          df.col.names = c("tick", "sheep", "wolves"))
tail(sheep_count)
~~~
{:.input}
~~~
    tick sheep wolves
95    95   810     61
96    96   841     62
97    97   856     67
98    98   879     70
99    99   900     74
100  100   911     76
~~~
{:.output}


