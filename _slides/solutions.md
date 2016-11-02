---
---

## Exercise solutions

<!--split-->

### Solution 1


~~~r
species <- c()
count <- c()
data <- data.frame(species, count)
~~~
{:.text-document title="lesson-2.R"}


~~~r
str(data)
~~~
{:.input}
~~~
'data.frame':	0 obs. of  0 variables
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-1)

</aside>

<!--split-->

### Solution 2


~~~r
sol2a <- days[c(-1, -7)]
sol2b <- days[seq(2, 7, 2)]
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol2a
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
sol2b
~~~
{:.input}
~~~
[1] "Monday"    "Wednesday" "Friday"   
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-2)

</aside>

<!--split-->

### Solution 3


~~~r
sol3 <- df[2:3, 'ed']
~~~
{:.text-document title="lesson-2.R"}


~~~r
sol3
~~~
{:.input}
~~~
[1] highschool college   
Levels: middle < highschool < college
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-3)

</aside>

<!--split-->

### Solution 4


~~~r
df <- data.frame(
    size = 1:5,
    year = factor(
        c(2014, 2014, 2013, 2015, 2015),
	levels = c(2013, 2014, 2015),
	ordered = TRUE),
    prop = runif(n = 5))
fit <- lm(prop ~ size + year, data = df)
~~~
{:.text-document title="lesson-2.R"}


~~~r
summary(fit)
~~~
{:.input}
~~~

Call:
lm(formula = prop ~ size + year, data = df)

Residuals:
      1       2       3       4       5 
-0.0832  0.0832  0.0000  0.0832 -0.0832 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)   0.4460     0.5053   0.883    0.540
size          0.0276     0.1664   0.166    0.895
year.L        0.3974     0.2278   1.744    0.331
year.Q       -0.3197     0.3311  -0.966    0.511

Residual standard error: 0.1664 on 1 degrees of freedom
Multiple R-squared:  0.9171,	Adjusted R-squared:  0.6685 
F-statistic: 3.689 on 3 and 1 DF,  p-value: 0.3614
~~~
{:.output}

<aside class="notes" markdown="block">

[Return](#exercise-4)

</aside>

