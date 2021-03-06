% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{theoretical_wv}
\alias{theoretical_wv}
\title{Model Process to WV}
\usage{
theoretical_wv(theta, desc, objdesc, tau)
}
\arguments{
\item{theta}{A \code{vec} containing the list of estimated parameters.}

\item{desc}{A \code{vector<string>} containing a list of descriptors.}

\item{objdesc}{A \code{field<vec>} containing a list of object descriptors.}

\item{tau}{A \code{vec} containing the scales e.g. 2^(1:J)}
}
\value{
A \code{vec} containing the wavelet variance of the model.
}
\description{
This function computes the summation of all Processes to WV (haar) in a given model
}
\examples{
x.sim = gen_ar1( N = 10000, phi = 0.9, sigma2 = 4 )
ntau = floor(log(length(x.sim),2))
tau = 2^(1:ntau)
wv.theo = ar1_to_wv(phi = 0.9, sig2 = 16, tau)
plot(tau, wv.theo, col = "red")
}
\keyword{internal}

