---
---

## Plotting

To prepare the model output for plotting, let's combine it with model inputs in a data frame. Remember that the output of the `rep_sim()` function is coming from an `lapply()` so it is a **l**ist.


~~~r
n_wolves_rep <- rep(n_wolves, each=5)
df <- data.frame(as.factor(n_wolves_rep), unlist(sim_results))
~~~

~~~
Error in unlist(sim_results): object 'sim_results' not found
~~~

~~~r
names(df) <- c("n_wolves", "time")
~~~

~~~
Error in names(df) <- c("n_wolves", "time"): names() applied to a non-vector
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(df)
~~~
{:.input}
~~~
                                              
1 function (x, df1, df2, ncp, log = FALSE)    
2 {                                           
3     if (missing(ncp))                       
4         .Call(C_df, x, df1, df2, log)       
5     else .Call(C_dnf, x, df1, df2, ncp, log)
6 }                                           
~~~
{:.output}

===

Show range of outcomes for each level of initial number of wolves using a boxplot.


~~~r
library(ggplot2)
ggplot(df, aes(x=n_wolves, y=time)) + 
  geom_boxplot()
~~~

~~~
Error in if (is.waive(data) || empty(data)) return(cbind(data, PANEL = integer(0))): missing value where TRUE/FALSE needed
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-3]({{ site.baseurl }}/images/unnamed-chunk-3-1.png)

