---
---

## The Console

The interpreter accepts R commands interactively through the console. Basic math, as you would type it on a calculator, is usually a valid command in the R language:


~~~r
1 + 2
~~~
{:.input}
~~~
[1] 3
~~~
{:.output}


~~~r
5/3
~~~
{:.input}
~~~
[1] 1.666667
~~~
{:.output}


~~~r
4^2
~~~
{:.input}
~~~
[1] 16
~~~
{:.output}

<!--split-->

Question
: Why is the output prefixed by `[1]`?

Answer
: {:.fragment} That's the index, or position in a vector, of the first result.

<!--split-->

A command giving a vector of results shows this clearly:


~~~r
seq(1, 100)
~~~
{:.input}
~~~
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 [18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
 [35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
 [52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
 [69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
 [86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}

Rather than basic math, we used a **function** called `seq()` in this command.
Most of "learning R" involves getting to know a whole lot of functions, what are their arguments (a.k.a. inputs) and what do they return (a.k.a. output).

<!--split-->

One thing you'll regularly want to do is store output of a function to a variable.
Using the symbol `<-` is referred to as assignment: we assign to a **variable** on the left of the `<-` symbol the output of what is on its right.


~~~r
x <- seq(1, 100)
~~~
{:.input}

You'll notice that nothing prints to the console, because we assigned the output to a variable.
We can print `x` by evaluating it by itself.


~~~r
x
~~~
{:.input}
~~~
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 [18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
 [35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
 [52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
 [69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
 [86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}

<!--split-->

Commands must always reference things known to the interpreter.
When you start a R session, there are many things already known, including

- any number
- any string of characters
- functions in `base R`

<!--split-->

To reference a number or function you just type it in as above, but to referece a string of alpha-numeric characters you must surround them in quotation marks.


~~~r
'ab#45'
~~~
{:.input}
~~~
[1] "ab#45"
~~~
{:.output}

Question
: Is it better to use `'` or `"`?

Answer
: {:.fragment} There is no answer! You will often encounter stylistic choices like this, so if you don't have a personal preference try to mimic existing styles.

<!--split-->

Without quotes, the interpreter checks for things named `abc45.q` and doesn't find anything:


~~~r
ab#45
~~~
{:.input}
~~~
Error in eval(expr, envir, enclos): object 'ab' not found
~~~
{:.output}

<!--split-->

Anything you assign to a variable becomes known to R, so you can reference it in any command.


~~~r
y <- 'ab#45'
typeof(y)
~~~
{:.input}
~~~
[1] "character"
~~~
{:.output}
