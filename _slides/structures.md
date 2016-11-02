---
---

## Data structures

Data can be stored in several types of data structures depending on its complexity. 

| Dimensions | Homogeneous | Heterogeneous |
|------------+-------------+---------------|
| 1d*        | Vector      | List          |
| 2d         | Matrix      | Data frame    |
| nd         | Array       |               |

*Note that vectors in R are not mathematical vectors and therefore there is no difference between row and column orientation.

<!--split-->

## Data frames

Data frames are 2-dimensional and can contain heterogenous data like numbers in one column and categories in another. It is the data structure most similar to a spreadsheet in Excel. 

Data frames are a collection of equal-length vectors. This means that each column can contain a different type of data. Each row of a data frame should represent an observation. 

Read more about well-structured ("tidy") data frames [here](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html).


> Combine `x` and `animals` into a **data frame** with the aptly named function `data.frame()`. Note the period between the words. Store your data frame as an object called `my_df`.


~~~r
my_df <- data.frame(animals, x)
my_df
~~~
{:.input}

Some functions to get to know your data frame are:

| function    | returns              |
|-------------+----------------------|
| `dim()`     | dimensions           |
| `nrow()`    | number of rows       |
| `ncol()`    | number of columns    |
| `names()`   | (column) names       |
| `str()`     | structure            |
| `summary()` | summary info         |
| `head()`    | shows beginning rows |

<!--split-->

## Subsetting for data frames

Just like vectors, data frames can be subset and manipulated with square brackets. The square brackets work as follows: anything before the comma refers to the rows that will be selected, anything after the comma refers to the number of columns that should be returned.

<!--split-->

## Review: Important symbols

| Symbol  | Meaning    |
| ------- | ---------  |
| `?`     | get help   |
| `c()`   | combine    |
| `#`     | comment    |
| `:`     | sequence   |
| `<-`    | assignment |
| `[ ]`   | selection  |
