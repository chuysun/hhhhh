#' fn_cos
#'
#' computes the approximation of cos
#'
#' @details This function use the infinite series expansion of the cos form to calculate cos.
#' @param x a single number. The number to be transformed
#' @param k a positive integer. The number of terms to be used in the series expansion beyond the constant 1.
#'
#' @return return approximation
#'
#' @export
#'
#' @examples
#' fn_cos(pi, 5)
#'
#'
fn_cos <- function(x, k) {
  if (is.numeric(x) && is.numeric(k)&& k%%1==0 && k>0){
    cos_result=1
    for (i in 1:k){
      cos_result=cos_result+((-1)^i)*(x^(2*i)/factorial(2*i))
    }
  }else{
  stop("Invaild input.")
  }
  return(cos_result)
}

#' fun_sin
#'
#' computes the approximation of sin
#'
#' @details This function use the infinite series expansion of the sin form to calculate sin.

#' @param x a single number. The number to be transformed
#' @param k a positive integer. The number of terms to be used in the series expansion beyond the constant 1.
#'
#' @return return approximation of sin
#'
#' @export
#'
#' @examples
#' fun_sin(pi/2,5)
#'
fun_sin <- function(x, k) {
  if (is.numeric(x) && is.numeric(k)&& k%%1==0 && k>0){
    sin_result=x
    for (i in 1:k) {
      sin_result=sin_result+((-1)^i)*((x^(2*i+1))/factorial(2*i+1))
    }
  }else{
    stop("Invaild input")
  }
  return(sin_result)
}


