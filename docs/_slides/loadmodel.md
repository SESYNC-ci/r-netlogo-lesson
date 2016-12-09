---
---

## Load a NetLogo model

Find the Wolf Sheep model file (with extension ".nlogo") in the Models Library, and save the full path to a variable.


~~~r
model_path <- file.path("models", "Sample Models", "Biology", "Wolf Sheep Predation.nlogo")
~~~
{:.text-document title="{{ site.handouts }}"}



Load the model with `NLLoadModel()` by joining the NetLogo prefix to the model path.


~~~r
NLLoadModel(file.path(nl_path, model_path))
~~~
{:.text-document title="{{ site.handouts }}"}
