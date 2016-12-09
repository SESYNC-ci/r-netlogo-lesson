---
---

## Patches

Access information about patches using `NLGetPatches()`. Specify the variable of interest and which patches you are interested in. 

Find the color `("pcolor")` of the central patch (0, 0) using:


~~~r
center_pcolor <- NLGetPatches(patch.var = c("pxcor", "pycor", "pcolor"),
             patchset = "patches with [pxcor = 0 and pycor = 0]")
~~~
{:.text-document title="{{ site.handouts }}"}


~~~r
center_pcolor
~~~
{:.input}
~~~
  pxcor pycor pcolor
1     0     0     55
~~~
{:.output}

===

Set patch variables using `NLSetPatches()`. Specify the patch variable and a matrix with the same dimensions as your NetLogo world.

By using the code 35 for the color brown, we can kill all the grass using:


~~~r
NLSetPatches(patch.var = "pcolor", 
             in.matrix = matrix(35, nrow = 51, ncol = 51))
~~~
{:.text-document title="{{ site.handouts }}"}

Use `NLSetPatchSet()` to set variable values for one or more patches instead of the whole landscape. 
