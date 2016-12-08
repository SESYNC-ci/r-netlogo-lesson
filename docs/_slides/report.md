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

===

Or use `NLDoReport()` to repeat a command and reporter a defined number of times. This function is like a combination of `NLReport()` and `NLDoCommand()`.


~~~r
NLDoReport(iterations = 5, command = "go", reporter = "count sheep")
~~~
{:.input}
~~~
[[1]]
[1] 52

[[2]]
[1] 51

[[3]]
[1] 52

[[4]]
[1] 56

[[5]]
[1] 61
~~~
{:.output}

===

The default output of `NLDoReport()` is an R list, or you can specify that the output should be a data frame with columns named in the `df.col.names` argument. Each iteration becomes a row in the data frame. You can use vector of strings to get the results of multiple NetLogo reporters. 


~~~r
NLCommand("setup")
sheep_count <- NLDoReport(iterations = 100, 
                          command = "go", 
                          reporter = c("ticks", "count sheep", "count wolves"),
                          as.data.frame = TRUE,
                          df.col.names = c("tick", "sheep", "wolves"))
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
tail(sheep_count)
~~~
{:.input}
~~~
    tick sheep wolves
95    95  1015     68
96    96  1034     71
97    97  1059     76
98    98  1075     77
99    99  1100     82
100  100  1125     85
~~~
{:.output}

