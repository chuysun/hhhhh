
# project2

# Author: JiaYi Xue

The goal of project2 is to ...

## Installation

You can install the development version of project2 like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```
## List of function  

`fn_cos()`  computes the approximation of sin
`fun_sin()` computes the approximation of cos
`make_ci_class() ` create a ci_class object
`print.ci_class()` print method for ci_class
`calculate_CI()` construct 95% confidence interval

## Example

This is a basic example which shows you how to make ci_class object, and use the calculate_CI function to get the 95% confidence interval. 

``` r
library(project2)
## basic example code
set.seed(1111)
## generate a numeric vector 
x=rnorm(1000) 
## make it ci_class_object 
x_obj=make_ci_class(x)  
x_obj 
## calculate the 95% confidence interval 
calculate_CI(x_obj)

```

