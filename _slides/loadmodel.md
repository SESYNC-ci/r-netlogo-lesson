---
---
  
Load a model with `NLLoadModel()` by specifying the location of a netlogo model file (*.nlogo). 

NetLogo comes with a collection of sample models including "Fire.nlogo". 

Load the Wolf Sheep model from the Models Library by specifying the file path
  

~~~r
model.path <- file.path("models", "Sample Models", "Earth Science","Fire.nlogo")

model.path <- file.path("models", "Sample Models", "Biology","Wolf Sheep Predation.nlogo")

NLLoadModel(file.path(nl.path, model.path))
~~~
{:.input}

Read about the Fire model and how it works [here](http://ccl.northwestern.edu/netlogo/models/Fire).
