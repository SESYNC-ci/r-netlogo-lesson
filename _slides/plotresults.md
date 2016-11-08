---
---
  
  plot results
  

~~~r
# Prepare data for ggplot
library(ggplot2)
dd <-rep(55:65, each=20)
df <- data.frame(as.factor(dd),unlist(res))
names(df) <- c("density","percent.burned")

bp <- ggplot(df, aes(x=density, y=percent.burned)) + geom_boxplot()
bp + ggtitle("Forest Fire Simulation: variation near phase transition")
~~~

![plot of chunk unnamed-chunk-1](/rnetlogo-lesson/images/unnamed-chunk-1-1.png)
