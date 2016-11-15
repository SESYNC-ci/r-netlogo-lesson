---
---

## Simulation

Make a function to run a simulation, then use it within a replicate function


~~~r
my_sim <- function(n_wolves){
  NLCommand("setup", "set initial-number-wolves", n_wolves)
  NLDoCommandWhile("any? wolves and any? sheep and ticks < 500", "go")
  ret <- NLReport(reporter = "ticks")
  return(ret)
}

my_sim(100)
~~~
{:.input}
~~~
[1] 178
~~~
{:.input}
~~~r
replicate(n = 5, expr = my_sim(100))
~~~
{:.input}
~~~
[1] 194 227 184 184 184
~~~
{:.output}

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
NLQuit()
~~~
{:.input}

  
