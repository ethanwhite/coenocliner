\name{sim1dNegbinom}
\alias{sim1dNegbinom}
\title{Simulate negative binomial counts along a single gradient}
\usage{
sim1dNegbinom(x, opt, tol, h, alpha, expectation = FALSE)
}
\arguments{
  \item{x}{numeric; gradient locations.}

  \item{opt}{numeric; species optima, one per taxon.}

  \item{tol}{numeric; species tolerances, one per taxon.}

  \item{h}{numeric; species abundance at optima, one per
  taxon.}

  \item{alpha}{numeric; dispersion parameter for the
  negative binomial.}

  \item{expectation}{logical; should expectations (mean
  response) be returned?}
}
\value{
a matrix of simulated counts.
}
\description{
Simulates species abundances along a single gradient
simulated from a negative binomial distribution assuming a
Gaussian response model.
}
\details{
The response model used is the classical Gaussian response
with parameters \eqn{\mu}{mu}, the species optimum,
\eqn{t}, the species tolerance, and \eqn{h}, the height of
the response curve at the optimum.

If \code{expectation = TRUE} the mean response for the
parameters is returned. If \code{expectation = FALSE}
counts are drawn randomly from a negative binomial
distribution with mean (argument \code{lamba}) given by the
Gaussian response.
}
\section{Note}{
  When called with \code{expectation = FALSE} the function
  does not use the pseudorandom number generator, but when
  called with the defaults two calls to the pseudorandom
  number generator are made.
}
\examples{
set.seed(1)
x1 <- seq(from = 4, to = 6, length = 100)
Opt <- seq(4, 6, length = 5)
Tol <- rep(0.25, 5)
H <- rep(20, 5)
y <- sim1dNegbinom(x1, Opt, Tol, H, alpha = 1.1)

y <- sim1dNegbinom(x1, Opt, Tol, H, expectation = TRUE)
matplot(x1, y, type = "l", lty = "solid")
}
\author{
Gavin L. Simpson
}

