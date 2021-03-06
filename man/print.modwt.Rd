% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modwt.R
\name{print.modwt}
\alias{print.modwt}
\title{Print Maximum Overlap Discrete Wavelet Transform}
\usage{
\method{print}{modwt}(x, ...)
}
\arguments{
\item{x}{A \code{modwt} object}

\item{...}{further arguments passed to or from other methods.}
}
\value{
Prints the modwt decomposition
}
\description{
Prints the results of the modwt list
}
\examples{
set.seed(999)
x=rnorm(100)
print(modwt(x))
}
\author{
JJB
}
\keyword{internal}

