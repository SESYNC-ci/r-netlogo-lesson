---
---
  
It is possible to submit more than one command at once and in combination with R variables. Remember to use "setup" after changing model parameters


~~~r
init_sheep <- 50
NLCommand("set initial-number-sheep ", init_sheep, "setup")
~~~
{:.input}
