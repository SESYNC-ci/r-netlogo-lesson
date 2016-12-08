---
---

## Simulation

Make a function to run a simulation, then use it within a replicate function


~~~r
my_sim <- function(n_wolves){
  NLCommand("setup", "set initial-number-wolves", n_wolves)
  NLDoCommandWhile("any? wolves and any? sheep and ticks < 300", "go")
  ret <- NLReport(reporter = "ticks")
  return(ret)
}
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
my_sim(100)
~~~
{:.input}
~~~
[1] 164
~~~
{:.output}

===


~~~r
replicate(n = 5, expr = my_sim(100))
~~~

~~~
[1] 174 194 200 224 180
~~~
{:.text-document title="{{ site.handouts }}"}


===

Repeat simulation over a range of parameters using the simulation function inside of an `lapply()` function.


~~~r
n_wolves <- seq(100, 250, 50)
reps <- 5

rep_sim <- function(n_wolves, reps){
  res <- lapply(n_wolves, function(r) replicate(n = reps, expr = my_sim(r)))
  return(res)
}

sim_results <- rep_sim(n_wolves, reps)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
[[1]]
[1] 173 195 202 184 183

[[2]]
[1] 205 187 234 188 198

[[3]]
[1] 237  79 271 243  79

[[4]]
[1] 207  58  77  64  55
~~~
{:.output}

  
