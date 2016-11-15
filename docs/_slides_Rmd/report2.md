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
1    1    52     53
2    2    52     56
3    3    52     56
4    4    53     54
5    5    54     55
6    6    54     53
~~~
{:.output}



