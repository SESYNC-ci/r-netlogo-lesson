---
---

## Simulation

Make a function to run a simulation, use it within a replicate function

Define a function to run a simulation with a given set of initial values. 


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

Repeat simulation over a range of parameters


~~~r
# put replicate inside an lapply to run over a range of initial n wolves values
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

  