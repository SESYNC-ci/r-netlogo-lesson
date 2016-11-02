---
---

## Flow control

As a general purpose programming language, you can write R scripts to take care of non-computational tasks.

"Flow control" is the generic term for letting variables whose value is determined at run time to dictate how the code evaluates. It's things like "for loops" and "if/else" statements.

<!--split-->

## Install missing packages

The last thing we'll do before taking a break, is let R check for any packages you'll need today that aren't installed. But we'll learn how to use flow control along the way.

First, aquire the list of any missing packages.


~~~r
requirements <- c('tidyr',
		  'dplyr',
		  'RSQLite',
		  'sp',
		  'rgdal',
		  'rgeos',
		  'raster',
		  'shiny',
		  'leaflet',
		  'ggplot2')
		  
missing <- setdiff(requirements,
	           rownames(installed.packages()))
~~~
{:.text-document title="lesson-2.R"}

<!--split-->

Check, from the console, your number of missing packages:


~~~r
length(missing) == 0
~~~
{:.input}
~~~
[1] TRUE
~~~
{:.output}

Your result will be `TRUE` or `FALSE`, depending on whether you installed all the packages already. We can let the script decide what to do with this information.

<!--split-->

The keyword `if` is part of the R language's syntax for flow control. The statement in the body (between `{` and `}`) only evaluates if the argument (between `(` and `)`) evaluates to TRUE.


~~~r
if (length(missing) != 0) {
  install.packages(missing, dep=TRUE)
}
~~~
{:.text-document title="lesson-2.R"}
