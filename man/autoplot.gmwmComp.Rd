% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GMWM.R
\name{autoplot.gmwmComp}
\alias{autoplot.gmwmComp}
\title{Compare GMWM Model Fits with ggplot2 (Internal)}
\usage{
\method{autoplot}{gmwmComp}(object, breaks, levels, object.names,
  split = TRUE, CI = TRUE, background = "white", transparence = 0.1,
  line.color = NULL, CI.color = NULL, line.type = NULL,
  point.size = NULL, point.shape = NULL,
  title = "Comparison of Implied Wavelet Variance", title.size = 15,
  axis.label.size = 13, axis.tick.size = 11,
  axis.x.label = expression(paste("Scale ", tau)),
  axis.y.label = expression(paste("Wavelet Variance ", nu)),
  facet.label.size = 13, legend.label = NULL, legend.title = "",
  legend.key.size = 1.3, legend.title.size = 13, legend.text.size = 13,
  nrow = 1, plot.emp.wv = T, ...)
}
\arguments{
\item{object}{A \code{data.frame} containing both sets of GMWM object data.}

\item{breaks}{A \code{vector} used to determine the legend label.}

\item{levels}{A \code{vector} of \code{string} that indicates each level in the dataset.}

\item{object.names}{A \code{vector} of \code{string} that indicates name of each object.}

\item{split}{A \code{boolean} that indicates whether the graphs should be separate (TRUE) or graphed ontop of each other (FALSE).}

\item{CI}{A \code{boolean} that indicates whether the confidence interval should be plotted.}

\item{background}{A \code{string} that determines the graph background. It can be \code{'grey'} or \code{'white'}.}

\item{transparence}{A \code{double} that ranges from 0 to 1 that controls the transparency of the graph.}

\item{line.color}{A \code{vector} of \code{string} that indicates the color of lines.}

\item{CI.color}{A \code{vector} of \code{string} that indicates the color of the confidence interval (e.g. 'black', 'red', '#003C7D', etc.)}

\item{line.type}{A \code{vector} of \code{string} that indicates the type of lines.}

\item{point.size}{A \code{vector} of \code{integer} that indicates the size of points on lines.}

\item{point.shape}{A \code{vector} of \code{integer} that indicates the shape of points on lines.}

\item{title}{A \code{string} that indicates the title of the graph.}

\item{title.size}{An \code{integer} that indicates the size of title.}

\item{axis.label.size}{An \code{integer} that indicates the size of label.}

\item{axis.tick.size}{An \code{integer} that indicates the size of tick mark.}

\item{axis.x.label}{A \code{string} that indicates the label on x axis.}

\item{axis.y.label}{A \code{string} that indicates the label on y axis.}

\item{facet.label.size}{An \code{integer} that indicates the size of facet label.}

\item{legend.label}{A \code{vector} of \code{string} that indicates the labels on legend.}

\item{legend.title}{A \code{string} that indicates the title of legend.}

\item{legend.key.size}{A \code{double} that indicates the size of key (in centermeters) on legend.}

\item{legend.title.size}{An \code{integer} that indicates the size of title on legend.}

\item{legend.text.size}{An \code{integer} that indicates the size of key label on legend.}

\item{nrow}{An \code{integer} that indicates how many rows the graph should be arranged in.}

\item{plot.emp.wv}{A \code{boolean} that indicates whether Emp. WV should be plotted or not (Used in \code{compare.models}).}

\item{...}{other arguments passed to specific methods}
}
\value{
A ggplot2 panel containing one graph with several GMWM models plotted against each other.
}
\description{
Creates a single graph that contains several GMWM models plotted against each other.
}
\note{
User doesn't need to know this function.
}
\author{
JJB, Wenchao
}
\keyword{internal}

