---
---

## Plotting

Prepare data for plotting. The output of the `rep_sim()` function is a list based on the `lapply()`.


~~~r
nw <- rep(n_wolves, each=reps)
df <- data.frame(as.factor(nw), unlist(sim_results))
names(df) <- c("n_wolves", "time")
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(df)
~~~
{:.input}
~~~
  n_wolves time
1      100  173
2      100  195
3      100  202
4      100  184
5      100  183
6      150  205
~~~
{:.output}

===

Show range of outcomes for each level of initial number of wolves using a boxplot.


~~~r
library(ggplot2)
ggplot(df, aes(x=n_wolves, y=time)) + 
  geom_boxplot()
~~~
{:.text-document title="{{ site.handouts }}"}

![plot of chunk unnamed-chunk-3]({{ site.baseurl }}/images/unnamed-chunk-3-1.png)

