---
---

## Data types and structures

| Type      | Example           |
|-----------+-------------------|
| integer   | -4, 0, 999        |
| double    | 3.1, -4, Inf, NaN |
| character | "a", "4", "👏"     |
| logical   | TRUE, FALSE       |
| missing   | NA                |

Data structures, or more generally "objects", are built from one or more of these data types and other objects.

<!--split-->

## Vectors

Vectors are the basic data structure in R. They are a collection of data that are all of the same type. Create a vector by combining elements together using the function `c()`. Use the operator `:` for a sequence of numbers (forwards or backwards), otherwise separate elements with commas. 


~~~r
counts <- c(4, 3, 7, 5)
~~~
{:.text-document title="lesson-2.R"}

All elements of an vector must be the same type, so when you attempt to combine different types they will be coerced to the most flexible type. 


~~~r
c(1, 2, "c")
~~~
{:.input}
~~~
[1] "1" "2" "c"
~~~
{:.output}

<!--split-->

## Lists

Lists are like vectors but their elements can be of any data type or structure, including another list! You construct lists by using `list()` instead of `c()`. 

Compare the results of `list()` and `c()`


~~~r
x <- list(list(1, 2), c(3, 4))
y <- c(list(1, 2), c(3, 4))
~~~
{:.text-document title="lesson-2.R"}

Question
: What's different about the structure of the variables `x` and `y`? Use the function `str()` to investigate.

Answer
: {:.fragment} The list contains two elements, a list and a vector. The vector `y` flattened the elements to a single element of the most flexible data type.

<!--split-->

## Factors

A factor is a vector that can contain only predefined values, and is used to store categorical data. Factors are built on top of integer vectors using two attributes: the class(), “factor”, which makes them behave differently from regular integer vectors, and the levels(), which defines the set of allowed values. 

<!--split-->

Use `factor()` to create a vector with factors, or `as.factor()` to convert an existing vector to factors.  


~~~r
education <- factor(
    c("college", "highschool", "college", "middle"),
    levels = c("middle", "highschool", "college"),
    ordered = TRUE)
~~~
{:.text-document title="lesson-2.R"}


~~~r
str(education)
~~~
{:.input}
~~~
 Ord.factor w/ 3 levels "middle"<"highschool"<..: 3 2 3 1
~~~
{:.output}
