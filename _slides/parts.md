---
---

## Parts of an Object

Parts of objects are always accessible, either by their name or by their position, using square brackets: `[` and `]`.

## Position


~~~r
counts[1]
~~~
{:.input}
~~~
[1] 4
~~~
{:.output}


~~~r
counts[3]
~~~
{:.input}
~~~
[1] 7
~~~
{:.output}

<!--split-->

## Names

Parts of an object can usually also have a name. The names can be given when you are creating a vector or afterwards using the `names()` function. 


~~~r
df['education']
~~~
{:.input}
~~~
   education
1    college
2 highschool
3    college
4     middle
~~~
{:.output}

<!--split-->


~~~r
names(df) <- c("ed", "ct")
~~~
{:.text-document title="lesson-2.R"}


~~~r
df['ed']
~~~
{:.input}
~~~
          ed
1    college
2 highschool
3    college
4     middle
~~~
{:.output}

Question
: This use of `<-` with `names(x)` on the left is a little odd. What’s going on?

Answer
: {:.fragment} We are overwriting an existing variable, but one that is accessed through the output of the function on the left rather than the global environment.

<!--split-->

In a multi-dimensional array, you separate the dimension along which a part is requested with a comma.


~~~r
df[3, "ed"]
~~~
{:.input}
~~~
[1] college
Levels: middle < highschool < college
~~~
{:.output}

It's fine to mix names and indices when selecting parts of an object.

<!--split-->

## Subsetting ranges

There are multiple ways to simultaneously extract multiple parts of an object.

| Use in brackets   | Subset instructions                                   |
|-------------------+-------------------------------------------------------|
| positive integers | elements at the specified positions                   |
| negative integers | omit elements at the specified positions              |
| logical vectors   | select elements where the corresponding value is TRUE |
| nothing           | return the original vector (all)                      |

<!--split-->


~~~r
days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
weekdays <- days[2:6]
weekend <- days[c(1, 7)]
~~~
{:.text-document title="lesson-2.R"}


~~~r
weekdays
~~~
{:.input}
~~~
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
~~~
{:.output}


~~~r
weekend
~~~
{:.input}
~~~
[1] "Sunday"   "Saturday"
~~~
{:.output}

<!--split-->

## Exercise 2

Get weekdays using negative integers. Get M-W-F using a call to `seq()` to specify the position (don't forget to `?seq`).
