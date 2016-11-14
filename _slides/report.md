---
---
  
Use `NLReport()` to get a value or list of values.


~~~r
NLReport("ticks")
~~~
{:.input}
~~~
[1] 0
~~~
{:.input}
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
[1] 54

[[2]]
[1] 53

[[3]]
[1] 52

[[4]]
[1] 53

[[5]]
[1] 56
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
head(sheep_count)
~~~
{:.input}
~~~
  tick sheep wolves
1    1    56     51
2    2    55     53
3    3    52     53
4    4    55     52
5    5    63     55
6    6    64     58
~~~
{:.output}


