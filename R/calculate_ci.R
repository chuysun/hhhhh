
sample_mean <- function(x) {
  sample_sum=0
  for (i in 1:length(x)) {
    sample_sum=sample_sum+x[i]
  }
  mean_result=sample_sum/length(x)
  return(mean_result)
}

sample_sd <- function(x) {
  tem_sum=0
  x_mean=sample_mean(x)
  for (i in 1:length(x)) {
    tem_sum=tem_sum+(x[i]-x_mean)^2
  }
  sd_result=sqrt((1/(length(x)-1))*tem_sum)
  return(sd_result)
}

#' calculate_ci
#'
#' construct 95% confidence interval
#'
#' @details This function calculate the 95% confidence interval of the vector

#' @param x object from ci_class, contains the sample observations, mean, standard deviation, sample size
#'
#' @return the 95% confidence interval will be return
#'
#' @export
#'
#' @examples
#' x=rnorm(100)
#' obj=make_ci_class(x)
#' calculate(obj)
#'
calculate_CI <- function(x, conf = 0.95) {
  if (all(is.numeric(x$obs))&&is.vector(x$obs)&&inherits(x, "ci_class")){
  ##x=make_ci_class(x)
  ci_result=x$obs_mean+c(-1,1)*qt(0.975, df=x$obs_n)*(x$obs_sd/sqrt(x$obs_n))
  names(ci_result)=c("lower_bond", "upper_bound")
  }
  else{
    stop("Invaild input.")
  }
  return(ci_result)
}

