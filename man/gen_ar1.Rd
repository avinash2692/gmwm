% Generated by roxygen2: do not edit by hand
% Please edit documentation in src/gen_process.cpp, src/gen_process.h
\name{gen_ar1}
\alias{gen_ar1}
\title{Generate an AR(1) sequence}
\usage{
gen_ar1(N, phi = 0.3, sigma2 = 1)
}
\arguments{
\item{N}{An \code{integer} for signal length.}

\item{phi}{A \code{double} that contains autocorrection.}

\item{sigma2}{A \code{double} that contains process variance.}
}
\value{
gm A \code{vec} containing the AR(1) process.
}
\description{
Generate an AR sequence given phi and sig2.
}
\details{
This needs to be extended to AR(p) see \code{arima.sim} and \code{filter}.
}
\examples{
gen_ar1(10, 5, 1.2)
}
\keyword{internal}

