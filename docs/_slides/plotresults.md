---
---

## Plotting

Prepare data for plotting. The output of the `rep_sim()` function is a list based on the `lapply()`.


~~~r
nw <- rep(n_wolves, each=reps)
df <- data.frame(as.factor(nw), unlist(sim_results))
~~~
{:.input}
~~~
Error in data.frame(as.factor(nw), unlist(sim_results)): arguments imply differing number of rows: 20, 936
~~~
{:.input}
~~~r
names(df) <- c("n_wolves","time")
head(df)
~~~
{:.input}
~~~
  n_wolves time
1      100   59
2      100  193
3      100  181
4      100  194
5      100  199
6      150  201
~~~
{:.output}

===

Show range of outcomes for each level of initial number of wolves using a boxplot.


~~~r
library(ggplot2)
ggplot(df, aes(x=n_wolves, y=time)) + 
  geom_boxplot()
~~~

![plot of chunk unnamed-chunk-2]({{ site.baseurl }}/images/unnamed-chunk-2-1.png)

