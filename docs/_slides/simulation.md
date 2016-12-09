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
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
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
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~
{:.output}


===

To run the function using different parameters, create a vector to use with an `lapply()` function


~~~r
n_wolves <- seq(100, 250, 50)

res <- lapply(n_wolves, function(x) my_sim(x))
~~~

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(res)
~~~
{:.input}
~~~
Error in head(res): object 'res' not found
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

~~~
Error in .jcall(nl.obj, "V", "command", .jnew("java/lang/String", command)): RcallMethod: invalid object parameter
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
head(sim_results)
~~~
{:.input}
~~~
Error in head(sim_results): object 'sim_results' not found
~~~
{:.output}

  
