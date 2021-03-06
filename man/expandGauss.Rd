\name{expandGauss}
\alias{expandGauss}
\title{Expand gradient locations and species parameters of the
Gaussian response model}
\usage{
expandGauss(x, opt, tol, h)
}
\arguments{
  \item{x}{numeric; gradient locations.}

  \item{opt}{numeric; species optima, one per taxon.}

  \item{tol}{numeric; species tolerances, one per taxon.}

  \item{h}{numeric; species abundance at optima, one per
  taxon.}
}
\value{
a matrix of Gaussian repsonse model parameters for each
gradient location. Specifically, a matrix with columns
\code{x}, \code{opt}, \code{tol}, and \code{h}.
}
\description{
An \code{\link{expand.grid}}-like utility function for
parameters of the Gaussian response model.
}
\details{
The response model used is the classical Gaussian response
with parameters \eqn{\mu}{mu}, the species optimum,
\eqn{t}, the species tolerance, and \eqn{h}, the height of
the response curve at the optimum.

\code{expandGauss} performs an
\code{\link{expand.grid}}-like operation on the gradient
locations and species optima, and then replicates the
tolerance and height parameters to match the replication of
the optima.
}
\author{
Gavin L. Simpson
}

