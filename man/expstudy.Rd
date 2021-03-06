% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expstudy.R
\name{expstudy}
\alias{expstudy}
\title{Create an expstudy object}
\usage{
expstudy(data, actuals, expecteds, exposures, variances = NULL, keys = NULL)
}
\arguments{
\item{data}{the dataset of an experience study. Can be any kind of organized data
(e.g., \code{\link[base:data.frame]{base::data.frame()}}, \code{\link[tibble:tibble]{tibble::tibble()}}, etc.) but must be able to
be converted to a \code{\link[data.table:data.table]{data.table::data.table()}}.}

\item{actuals}{the observed variable (or variables) within the experience study (e.g.,
actual lapse counts for a lapse study).}

\item{expecteds}{the expected variable (or variables) within the experience study (e.g.,
actual deaths for a mortality study).}

\item{exposures}{the exposure variable (or variables) within the experience study. This will
be the time the records spans in years (or within (0, 1) for records
covering less than a year).}

\item{variances}{the variance variable (or variables) within the experience study. This may
not be available for all studies, thus can be omitted. Variance is used for
credibility calculations.}

\item{keys}{variables that uniquely describe every record within the experience study.
This typically is policy number and a measure of time, such as annual or
monthly duration. Can be omitted, but providing enables quicker binary
searches within the \code{\link[dtplyr:lazy_dt]{dtplyr::lazy_dt()}}. For more information, refer to the
\link{data.table} vignette:
\code{vignette('datatable-keys-fast-subset', package = 'data.table')}.}
}
\value{
an \code{expstudy}
}
\description{
\code{expstudy()} creates a subclass, \code{\link{tbl_es}}, of a \code{\link[dtplyr:lazy_dt]{dtplyr::lazy_dt()}}, that
stores attributes relating to an experience study.These attributes provide
other package functions arguments which reduce time needed to review an
assumption.
}
\examples{
  expstudy(
    data = mortexp,
    actuals = ACTUAL_DEATHS,
    expecteds = EXPECTED_DEATHS,
    exposures =  EXPOSURE,
    variances = VARIANCE_DEATHS
  )

}
