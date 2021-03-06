% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_metrics.R
\name{format_metrics}
\alias{format_metrics}
\title{Format \code{expstudy} metrics}
\usage{
format_metrics(expstudy)
}
\arguments{
\item{expstudy}{an \code{expstudy} object}
}
\value{
the same \code{expstudy} with formatted metrics
}
\description{
Easily format metrics and metric variables for better readability.
}
\examples{
  es <- expstudy(
    data = mortexp,
    actuals = ACTUAL_DEATHS,
    expecteds = EXPECTED_DEATHS,
    exposures =  EXPOSURE,
    variances = VARIANCE_DEATHS
  )

  # Unformatted result:
  es \%>\%
    aggregate(
      GENDER,
      UNDERWRITING_CLASS
    ) \%>\%
    add_proportions \%>\%
    add_metrics \%>\%
    add_credibility

  # Formatted result:
  es \%>\%
    aggregate(
      GENDER,
      UNDERWRITING_CLASS
    ) \%>\%
    add_proportions \%>\%
    add_metrics \%>\%
    add_credibility \%>\%
    format_metrics

}
