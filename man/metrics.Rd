% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics.R
\name{metrics}
\alias{metrics}
\alias{avg_observed}
\alias{avg_observed_vec}
\alias{avg_expected}
\alias{avg_expected_vec}
\alias{ci_fctr}
\alias{ci_fctr_vec}
\alias{ae_ratio}
\alias{ae_ratio_vec}
\alias{credibility}
\alias{credibility_vec}
\title{Experience study metrics}
\usage{
avg_observed(measure_set, ...)

avg_observed_vec(actuals, exposures, ...)

avg_expected(measure_set, ...)

avg_expected_vec(expecteds, exposures, ...)

ci_fctr(measure_set, se_conf = 0.95, two_tailed = TRUE, ...)

ci_fctr_vec(exposures, variances, se_conf = 0.95, two_tailed = TRUE, ...)

ae_ratio(measure_set, ...)

ae_ratio_vec(actuals, expecteds, ...)

credibility(measure_set, distance_from_mean = 0.05, cred_conf = 0.95, ...)

credibility_vec(
  expecteds,
  variances,
  distance_from_mean = 0.05,
  cred_conf = 0.95,
  ...
)
}
\arguments{
\item{measure_set}{A named character vector or list with each element mapping a column in
the experience study to one of the following measures: \code{actuals},
\code{expecteds}, \code{exposures}, or \code{variances}.}

\item{...}{Not used directly and be left blank.}

\item{actuals, expecteds, exposures, variances}{Columns in experience study that correspond to individual measures for
vector versions of metric functions.}

\item{se_conf}{A number between 0 and 1 corresponding to the confidence level surrounding
the standard error calculation.}

\item{two_tailed}{A boolean indicating whether or not a two-tailed hypothesis test should be
utilized.}

\item{distance_from_mean}{A number between 0 and 1 representing the precision of the credibility
estimate.}

\item{cred_conf}{A number between 0 and 1 corresponding to the confidence level surrounding
the credibility calculation.}
}
\value{
Measure set versions return a (\code{quosure})\code{\link[rlang:defusing-advanced]{rlang::quo()}} to be evaluated in
\code{\link[=mutate_metrics]{mutate_metrics()}}. Vector versions numeric vector
of the same length of measures used in the calculation per group (if
grouping applied).
}
\description{
A collection of common metrics used in an actuarial environment are provided.
Two versions of each metric functions have been developed: one where it takes
a measure set for an experience study as its primary argument, and one where
vectors can be provided instead.
}
\details{
Metric functions that use a measure set as its primary argument are intended
to be used with \code{\link[=mutate_metrics]{mutate_metrics()}} and return a (\code{quosure})\code{\link[rlang:defusing-advanced]{rlang::quo()}}.
Use the vector versions (those ending in \verb{_vec}) if instead a numeric vector
result is desired.
}
\section{Functions}{
\itemize{
\item \code{avg_observed()}: Calculates the average actual decrements observed per unit of exposure.

\item \code{avg_expected()}: Calculates the average expected decrements per unit of exposure.

\item \code{ci_fctr()}: Calculates the additive factor which constructs a confidence interval
around the expected decrement rate for a given level of confidence.

\item \code{ae_ratio()}: Calculates the ratio of actual decrements to expected decrements, also
referred to as the AE ratio.

\item \code{credibility()}: Calculates the credibility score according to limited fluctuation
credibility theory.

}}
