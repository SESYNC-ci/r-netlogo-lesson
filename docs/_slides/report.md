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
[1] 55

[[3]]
[1] 58

[[4]]
[1] 57

[[5]]
[1] 59
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
tail(sheep_count)
~~~
{:.input}
~~~
    tick sheep wolves
95    95   979     43
96    96  1016     44
97    97  1047     46
98    98  1078     49
99    99  1112     49
100  100  1124     51
~~~
{:.output}


