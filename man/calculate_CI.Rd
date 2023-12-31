% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_ci.R
\name{calculate_CI}
\alias{calculate_CI}
\title{calculate_ci}
\usage{
calculate_CI(x, conf = 0.95)
}
\arguments{
\item{x}{object from ci_class, contains the sample observations, mean, standard deviation, sample size}
}
\value{
the 95\% confidence interval will be return
}
\description{
construct confidence interval
}
\details{
This function calculate the 95\% confidence interval of the vector
}
\examples{
x=rnorm(100)
obj=make_ci_class(x)
calculate(obj)

}
