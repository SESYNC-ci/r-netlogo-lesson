---
---

## Simulation

Make a function to run a simulation, use it within a replicate function

Define a function to run a simulation with a given set of initial values. 


~~~r
sheep_r <- 5

# how long does it take the wolf population to collape
my_sim <- function(sheep_r){
  NLCommand("setup", "set sheep-reproduce", sheep_r)
  NLDoCommandWhile("any? wolves and ticks < 1000", "go")
  ret <- NLReport(reporter = "ticks")
  return(ret)
}

my_sim(1)
~~~
{:.input}
~~~
[1] 66
~~~
{:.input}
~~~r
replicate(n = 10, expr = my_sim(1))
~~~
{:.input}
~~~
 [1] 59 67 69 57 74 99 76 58 91 62
~~~
{:.output}

repeat simulation


~~~r
# put replicate inside an lapply to run over a range of initial sheep_r values
sheep_r <- seq(1, 2, 1)
lapply(sheep_r, function(r) replicate(n = 2, expr = my_sim(r)))
~~~
{:.input}
~~~
[[1]]
[1] 71 68

[[2]]
[1] 373  73
~~~
{:.input}
~~~r
# 
# rep.sim <- function(init_sheep, rep)         # run the simulation
#   lapply(density, function(dens) replicate(rep, sim(dens)))
# 
# 
# d <- seq(55, 65, 1)                  # vector of densities to examine
# res <- rep.sim(d, 20)                # Run the simulation
~~~
{:.output}

  
