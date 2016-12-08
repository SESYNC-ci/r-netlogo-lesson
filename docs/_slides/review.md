---
---

## Review

| Function(s) | Does what |
|-------------|-------------|
|   nl_path <- "`%filepath%`"  | Define where NetLogo is installed on your computer |
| `NLStart()` | Begin an instance of NetLogo in gui or headless mode |
| `NLLoadModel()` | Load a model file |
| `NLCommand()`, `NLDoCommand()` & `NLDoCommandWhile()` | Run commands |
| `NLReport()`, `NLDoReport()` & `NLDoReportWhile()` | Report values |
| `NLGetAgentSet()`, `NLSetAgentSet()`    |  Get & set values for agents |
|   `NLGetPatches()`, `NLSetPatches()` & `NLSetPatchSet()`  | Get & set values for patches |

RNetLogo package comes with sample R code showing implementation of each function in the package. In the RNetLogo folder, find these in `examples/code_samples/`

===

## References and further reading

* Thiele JC 2014. [R Marries NetLogo: Introduction to the RNetLogo Package](https://www.jstatsoft.org/article/view/v058i02). Journal of Statistical Software 58(2).
* *Package vignette*: Thiele JC. [Parallel processing with the RNetLogo Package](https://cran.r-project.org/web/packages/RNetLogo/vignettes/parallelProcessing.pdf)
* *Original package description*: Thiele JC, W Kurth, and V Grimm. 2012. [RNetLogo: an R package for running and exploring individual-based models implemented in NetLogo](http://onlinelibrary.wiley.com/doi/10.1111/j.2041-210X.2011.00180.x/abstract). **Methods in Ecology and Evolution** *3*:480-483.
* Video demo of [Running Agent-Based Modeling in R with NetLogo](http://curleylab.psych.columbia.edu/netlogo.html) from Curley lab at Columbia Univ
