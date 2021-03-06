% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msaenet-sim.R
\name{msaenet.sim.gaussian}
\alias{msaenet.sim.gaussian}
\title{Generate Simulation Data for Benchmarking Sparse Regressions (Gaussian Response)}
\usage{
msaenet.sim.gaussian(n = 300, p = 500, rho = 0.5, coef = rep(0.2, 50),
  snr = 1, p.train = 0.7, seed = 1001)
}
\arguments{
\item{n}{Number of observations.}

\item{p}{Number of variables.}

\item{rho}{Correlation base for generating correlated variables.}

\item{coef}{Vector of non-zero coefficients.}

\item{snr}{Signal-to-noise ratio (SNR).}

\item{p.train}{Percentage of training set.}

\item{seed}{Random seed for reproducibility.}
}
\value{
List of \code{x.tr}, \code{x.te}, \code{y.tr}, and \code{y.te}.
}
\description{
Generate simulation data (Gaussian case) following the
settings in Xiao and Xu (2015).
}
\examples{
dat = msaenet.sim.gaussian(
  n = 300, p = 500, rho = 0.6,
  coef = rep(1, 10), snr = 3, p.train = 0.7,
  seed = 1001)

dim(dat$x.tr)
dim(dat$x.te)
}
\references{
Nan Xiao and Qing-Song Xu. (2015). Multi-step adaptive elastic-net:
reducing false positives in high-dimensional variable selection.
\emph{Journal of Statistical Computation and Simulation} 85(18), 3755--3765.
}
\author{
Nan Xiao <\url{https://nanx.me}>
}
