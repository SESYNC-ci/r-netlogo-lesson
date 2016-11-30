---
---

## Load a NetLogo model

Load a model with `NLLoadModel()` by specifying the location of a netlogo model file (*.nlogo). 

Load the Wolf Sheep model from the Models Library by specifying the file path.
  

~~~r
model_path <- file.path("models", "Sample Models", "Biology","Wolf Sheep Predation.nlogo")

NLLoadModel(file.path(nl_path, model_path))
~~~
{:.input}
