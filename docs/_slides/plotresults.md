---
---

## Plotting

Prepare data for plotting. The output of the `rep_sim()` function is a list based on the `lapply()`.


~~~r
nw <- rep(n_wolves, each=reps)
~~~
{:.input}
~~~
Warning: internal error -3 in R_decompress1
~~~
{:.input}
~~~
Error in eval(expr, envir, enclos): lazy-load database 'X:/CYBER/rnetlogo-lesson/cache/unnamed-chunk-2_96bfc844c72237fe39a33dc37234dd46.rdb' is corrupt
~~~
{:.input}
~~~r
df <- data.frame(as.factor(nw), unlist(sim_results))
~~~
{:.input}
~~~
Error in is.factor(x): object 'nw' not found
~~~
{:.input}
~~~r
names(df) <- c("n_wolves","time")
~~~
{:.input}
~~~
Error in names(df) <- c("n_wolves", "time"): names() applied to a non-vector
~~~
{:.input}
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
{:.input}
~~~
Error in if (is.waive(data) || empty(data)) return(cbind(data, PANEL = integer(0))): missing value where TRUE/FALSE needed
~~~

![plot of chunk unnamed-chunk-2]({{ site.baseurl }}/images/unnamed-chunk-2-1.png)

