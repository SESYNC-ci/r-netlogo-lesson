---
---

## Simulation

Streamline the process of executing a model run by defining an R function that runs multiple lines of RNetLogo functions. See the [basic R lesson](https://sesync-ci.github.io/basic-R-lesson/#/slides/functions) to learn about writing functions in R. 


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
[1] 187
~~~
{:.output}

What are the input and output of this model? 

===

The `replicate` function makes it easy to run this function multiple times.


~~~r
replicate(n = 5, expr = my_sim(100))
~~~
{:.input}
~~~
[1] 189 266 211 170 205
~~~
{:.output}


===

To run the function using different parameters, create a vector to use with an `lapply()` function


~~~r
n_wolves <- seq(100, 250, 50)

res <- lapply(n_wolves, function(x) my_sim(x))
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(res)
~~~
{:.input}
~~~
[[1]]
[1] 176

[[2]]
[1] 190

[[3]]
[1] 205

[[4]]
[1] 300
~~~
{:.output}

===

We can define a function that combines `replicate` and `lapply` to repeat a simulation the same number of times for each value in the range of parameters.


~~~r
rep_sim <- function(n_wolves, reps){
  res <- lapply(n_wolves, function(x) replicate(n = reps, expr = my_sim(x)))
  return(res)
}

sim_results <- rep_sim(n_wolves = seq(100, 250, 50), reps = 5)
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
[[1]]
[1]  81 186 182 205 193

[[2]]
[1] 197 207  65 231 178

[[3]]
[1] 197 247 253 207  68

[[4]]
[1] 209  63  74 108 204
~~~
{:.output}

  
