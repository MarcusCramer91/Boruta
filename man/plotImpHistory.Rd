% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{plotImpHistory}
\alias{plotImpHistory}
\title{Plot Boruta object as importance history}
\usage{
plotImpHistory(x, colCode = c("green", "yellow", "red", "blue"), col = NULL,
  type = "l", lty = 1, pch = 0, xlab = "Classifier run",
  ylab = "Importance", ...)
}
\arguments{
\item{x}{an object of a class Boruta.}

\item{colCode}{a vector containing colour codes for attribute decisions, respectively Confirmed, Tentative, Rejected and shadow.}

\item{col}{standard \code{col} attribute, passed to \code{\link{matplot}}. If given, suppresses effects of \code{colCode}.}

\item{type}{Plot type that will be passed to \code{\link{matplot}}.}

\item{lty}{Line type that will be passed to \code{\link{matplot}}.}

\item{pch}{Point mark type that will be passed to \code{\link{matplot}}.}

\item{xlab}{X axis label that will be passed to \code{\link{matplot}}.}

\item{ylab}{Y axis label that will be passed to \code{\link{matplot}}.}

\item{...}{additional graphical parameter that will be passed to \code{\link{matplot}}.}
}
\value{
Invisible copy of \code{x}.
}
\description{
Alternative plot method for Boruta objects, showing matplot of attribute importances over run.
}
\note{
This function will throw an error when \code{x} lacks importance history, i.e., was made with \code{holdHistory} set to \code{FALSE}.
}
\examples{
\dontrun{
library(mlbench); data(Sonar)
#Takes some time, so be patient
Boruta(Class~.,data=Sonar,doTrace=2)->Bor.son
print(Bor.son)
plotImpHistory(Bor.son)
}
}
\author{
Miron B. Kursa
}
