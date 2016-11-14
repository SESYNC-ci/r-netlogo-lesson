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
[1] 51

[[2]]
[1] 51

[[3]]
[1] 53

[[4]]
[1] 53

[[5]]
[1] 55
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
1    1    50     52
2    2    52     51
3    3    51     56
4    4    54     61
5    5    54     62
6    6    54     64
~~~
{:.output}


