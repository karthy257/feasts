% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{unitroot_ndiffs}
\alias{unitroot_ndiffs}
\alias{unitroot_nsdiffs}
\title{Number of differences required for a stationary series}
\usage{
unitroot_ndiffs(
  x,
  alpha = 0.05,
  unitroot_fn = ~unitroot_kpss(.)["kpss_pvalue"],
  differences = 0:2,
  ...
)

unitroot_nsdiffs(
  x,
  alpha = 0.05,
  unitroot_fn = ~feat_stl(., .period)[2] < 0.64,
  differences = 0:2,
  .period = 1,
  ...
)
}
\arguments{
\item{x}{A vector to be tested for the unit root.}

\item{alpha}{The level of the test.}

\item{unitroot_fn}{A function (or lambda) that provides a p-value for a unit root test.}

\item{differences}{The possible differences to consider.}

\item{...}{Additional arguments passed to the \code{unitroot_fn} function}

\item{.period}{The period of the seasonality.}
}
\value{
A numeric corresponding to the minimum required differences for stationarity.
}
\description{
Use a unit root function to determine the minimum number of differences
necessary to obtain a stationary time series.
}
