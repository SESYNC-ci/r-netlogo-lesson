---
---


## Setup

After installing the RNetLogo package, load the library and define the file path where NetLogo is installed on your computer.

On Windows, the following path is standard.


~~~r
library(RNetLogo)

nl_jar <- # path to NetLogo JAR files
nl_path <- dirname(nl_jar)
~~~
{:.text-document title="{{ site.handouts[0] }}"}


~~~
Loading required package: rJava
~~~
{:.input}
~~~
Loading required package: igraph
~~~
{:.input}
~~~

Attaching package: 'igraph'
~~~
{:.input}
~~~
The following objects are masked from 'package:stats':

    decompose, spectrum
~~~
{:.input}
~~~
The following object is masked from 'package:base':

    union
~~~
{:.output}
