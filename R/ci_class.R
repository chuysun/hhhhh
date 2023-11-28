#' make_ci_class
#'
#' create a ci_class object
#'
#' @details This a constructor function for ci_class
#' @param obs a set of number.
#'
#' @return return ci_class object
#'
#' @export
#'
#' @examples
#' x=rnorm(100)
#' obj=make_ci_class(x)
#' obj$obs_mean
#' obj$obs_sd
make_ci_class=function(obj){
  if(all(is.numeric(obj))&&is.vector(obj)){
    ci_obj=list(obs=obj, obs_mean=sample_mean(obj), obs_sd=sample_sd(obj), obs_n=length(obj))
    class(ci_obj)="ci_class"
  }else{
    stop("Invaild input_1")
  }
  return(ci_obj)
}


#' print method for ci_class
#'
#' @details This print method for ci_class
#' @param x a ci_class object
#'
#' @return return a message with name of the class and the the number of observations in the ci_class object
#' @export
#'
#' @examples
#' x=rnorm(100)
#' obj=make_ci_class(x)
#' print(obj)
#'
print.ci_class=function(x){
  cat("a ci_class with ", x$obs_n, "observations")
}


