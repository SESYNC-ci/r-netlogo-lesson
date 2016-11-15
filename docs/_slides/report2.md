---
---
  
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
1    1    52     50
2    2    54     49
3    3    54     52
4    4    54     54
5    5    57     56
6    6    59     53
~~~
{:.output}



