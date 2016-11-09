---
---
  
The default output of `NLDoReport()` is an R list, or you can specify that the output should be a data frame with columns named in the `df.col.names` argument. You can use vector of strings to get the results of multiple NetLogo reporters. 


~~~r
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
1    6    49     62
2    7    48     62
3    8    45     63
4    9    47     59
5   10    48     58
6   11    47     59
~~~
{:.output}



