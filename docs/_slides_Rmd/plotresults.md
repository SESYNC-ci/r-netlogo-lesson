---
---

## Plotting

Prepare data for plotting 


~~~r
nw <- rep(n_wolves, each=reps)
df <- data.frame(as.factor(nw), unlist(sim_results))
names(df) <- c("n_wolves","time")
head(df)
~~~
{:.input}
~~~
  n_wolves time
1      100  322
2      100  169
3      100  217
4      100  203
5      100  190
6      150  195
~~~
{:.output}

Plot using ggplot to show range of outcomes for each level of initial number of wolves plus the actual values. 


~~~r
library(ggplot2)
ggplot(df, aes(x=n_wolves, y=time)) + 
  geom_boxplot()
~~~

![plot of chunk unnamed-chunk-2]({{ site.baseurl }}/images/unnamed-chunk-2-1.png)

