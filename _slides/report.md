---
---
  
Use `NLReport()` to get a value or list of values.


~~~r
NLReport("ticks")
~~~
{:.input}
~~~
[1] 0
~~~
{:.input}
~~~r
NLReport("count sheep")
~~~
{:.input}
~~~
[1] 50
~~~
{:.output}

Or use `NLDoReport()` to repeat a command and reporter a defined number of times. This function is like a combination of `NLReport()` and `NLDoCommand()`.


~~~r
NLDoReport(iterations = 5, command = "go", reporter = "count sheep")
~~~
{:.input}
~~~
[[1]]
[1] 48

[[2]]
[1] 51

[[3]]
[1] 50

[[4]]
[1] 51

[[5]]
[1] 50
~~~
{:.output}
