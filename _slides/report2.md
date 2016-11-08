---
---
  
The default output of `NLDoReport()` is an R list, or you can specify that the output should be a data frame with columns named in the `df.col.names` argument. You can use vector of strings to get the results of multiple NetLogo reporters. 


~~~r
sheep_count <- NLDoReport(iterations = 100, 
                          command = "go", 
                          reporter = c("count sheep", "count wolves"),
                          as.data.frame = TRUE,
                          df.col.names = c("sheep", "wolves"))
head(sheep_count)
~~~
{:.input}
~~~
  sheep wolves
1   856    129
2   863    135
3   854    148
4   851    150
5   842    156
6   842    164
~~~
{:.output}



