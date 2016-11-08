---
---
  

~~~r
# functions to control the simulation
sim <- function(density) {
  NLCommand("set density ", density, "setup")
  NLDoCommandWhile("any? turtles", "go");
  ret <- NLReport("(burned-trees / initial-trees) * 100")
  return(ret)
}


rep.sim <- function(density, rep)         # run the simulation
  lapply(density, function(dens) replicate(rep, sim(dens)))


d <- seq(55, 65, 1)                  # vector of densities to examine
res <- rep.sim(d, 20)                # Run the simulation
~~~
{:.input}

  
  
