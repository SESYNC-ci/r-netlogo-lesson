---
---

## Plotting

To prepare the model output for plotting, let's combine it with model inputs in a data frame. Remember that the output of the `rep_sim()` function is coming from an `lapply()` so it is a **l**ist.


~~~r
n_wolves_rep <- rep(n_wolves, each=5)
df <- data.frame(as.factor(n_wolves_rep), unlist(sim_results))
names(df) <- c("n_wolves", "time")
~~~
{:.text-document title="{{ site.handouts[0] }}"}


~~~r
head(df)
~~~
{:.input}
~~~
  n_wolves time
1      100   62
2      100  182
3      100  195
4      100  226
5      100  179
6      150  225
~~~
{:.output}

===

Show range of outcomes for each level of initial number of wolves using a boxplot.


~~~r
library(ggplot2)
ggplot(df, aes(x=n_wolves, y=time)) + 
  geom_boxplot()
~~~
{:.text-document title="{{ site.handouts[0] }}"}

![plot of chunk unnamed-chunk-3]({{ site.baseurl }}/images/unnamed-chunk-3-1.png)
{:.captioned}

