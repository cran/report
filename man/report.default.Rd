% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.default.R
\name{report.default}
\alias{report.default}
\alias{report_effectsize.default}
\alias{report_table.default}
\alias{report_statistics.default}
\alias{report_parameters.default}
\alias{report_intercept.default}
\alias{report_model.default}
\alias{report_random.default}
\alias{report_priors.default}
\alias{report_performance.default}
\alias{report_info.default}
\alias{report_text.default}
\title{Template to add report support for new objects}
\usage{
\method{report}{default}(x, ...)

\method{report_effectsize}{default}(x, ...)

\method{report_table}{default}(x, ...)

\method{report_statistics}{default}(x, ...)

\method{report_parameters}{default}(x, ...)

\method{report_intercept}{default}(x, ...)

\method{report_model}{default}(x, ...)

\method{report_random}{default}(x, ...)

\method{report_priors}{default}(x, ...)

\method{report_performance}{default}(x, ...)

\method{report_info}{default}(x, ...)

\method{report_text}{default}(x, ...)
}
\arguments{
\item{x}{Object of class \verb{NEW OBJECT}.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
An object of class \code{\link[=report]{report()}}.
}
\description{
Template file to add report support for new objects. Check-out the vignette on
\href{https://easystats.github.io/report/articles/new_models.html}{Supporting New Models}.
}
\examples{
library(report)

# Add a reproducible example instead of the following
model <- lm(Sepal.Length ~ Petal.Length * Species, data = iris)
r <- report(model)
r
summary(r)
as.data.frame(r)
summary(as.data.frame(r))
}
\seealso{
Specific components of reports (especially for stats models):
\itemize{
\item \code{\link[=report_table]{report_table()}}
\item \code{\link[=report_parameters]{report_parameters()}}
\item \code{\link[=report_statistics]{report_statistics()}}
\item \code{\link[=report_effectsize]{report_effectsize()}}
\item \code{\link[=report_model]{report_model()}}
\item \code{\link[=report_priors]{report_priors()}}
\item \code{\link[=report_random]{report_random()}}
\item \code{\link[=report_performance]{report_performance()}}
\item \code{\link[=report_info]{report_info()}}
\item \code{\link[=report_text]{report_text()}}
}

Other types of reports:
\itemize{
\item \code{\link[=report_system]{report_system()}}
\item \code{\link[=report_packages]{report_packages()}}
\item \code{\link[=report_participants]{report_participants()}}
\item \code{\link[=report_sample]{report_sample()}}
\item \code{\link[=report_date]{report_date()}}
}

Methods:
\itemize{
\item \code{\link[=as.report]{as.report()}}
}

Template file for supporting new models:
\itemize{
\item \code{\link[=report.default]{report.default()}}
}
}
