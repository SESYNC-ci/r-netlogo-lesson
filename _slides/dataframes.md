---
---

## Multi-dimensional data structures

Data can be stored in several types of data structures depending on its complexity. 

| Dimensions | Homogeneous | Heterogeneous |
|------------+-------------+---------------|
| 1d*        | c()         | list()        |
| 2d         | matrix()    | data.frame()  |
| nd         | array()     |               |

Of these, the data frame is far and away the most used.

<!--split-->

## Data frames

Data frames are 2-dimensional and can contain heterogenous data like numbers in one column and a factor in another.

It is the data structure most similar to a spreadsheet, with two key differences:

- Data frames are collections of *equal-length* vectors.
- As vectors, the columns are homogeneous and cannot hold values of the *wrong* type.

<!--split-->

Creating a data frame from scratch can be done by combining vectors with the `data.frame()` function.


~~~r
df <- data.frame(education, counts)
~~~
{:.text-document title="lesson-2.R"}


~~~r
df
~~~
{:.input}
~~~
   education counts
1    college      4
2 highschool      3
3    college      7
4     middle      5
~~~
{:.output}

<!--split-->

Some functions to get to know your data frame are:

| Function    | Output               |
|-------------+----------------------|
| `dim()`     | dimensions           |
| `nrow()`    | number of rows       |
| `ncol()`    | number of columns    |
| `names()`   | (column) names       |
| `str()`     | structure            |
| `summary()` | summary info         |
| `head()`    | shows beginning rows |


~~~r
names(df)
~~~
{:.input}
~~~
[1] "education" "counts"   
~~~
{:.output}

<!--split-->

## Exercise 1

Create a data frame with two columns, one called "species" and another called "count" into a data frame. Store your data frame as a variable called `data`. You can do this with or without populating the data frame with values.
