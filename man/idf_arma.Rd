% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{idf_arma}
\alias{idf_arma}
\title{Indirect Inference for ARMA}
\usage{
idf_arma(ar, ma, sigma2, N, robust, eff, H)
}
\arguments{
\item{ar}{A \code{vec} that contains the coefficients of the AR process.}

\item{ma}{A \code{vec} that contains the coefficients of the MA process.}

\item{sigma2}{A \code{double} that indicates the sigma2 parameter of the ARMA process.}

\item{N}{A \code{int} that indicates how long the time series is.}

\item{robust}{A \code{bool} that indicates whether the estimation should be robust or not.}

\item{eff}{A \code{double} that specifies the amount of efficiency required by the robust estimator.}

\item{H}{A \code{int} that indicates how many iterations should take place.}
}
\value{
A \code{vec} with the indirect inference results.
}
\description{
Option for indirect inference
}
\keyword{internal}

