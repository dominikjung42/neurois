% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/web-as_clickstream.R
\name{as_clickstream}
\alias{as_clickstream}
\title{as_clickstream() Convert to clickstream data}
\usage{
as_clickstream(data, objectives = F, attribution = "last")
}
\arguments{
\item{data}{a brownie dataframe}

\item{objectives}{can be either FALSE or a labeled vector of URLs}

\item{attribution}{a character, either "first" or "last"}
}
\value{
list of class "clickstreams"
}
\description{
Converts brownie data into clickstream data to do further analysis with the package clickstream.
With the clickstream package, it's possible to build markov models and plot transition graphs.
Additionally this function has a  implementation of the attribution models "first" or "last". Attribution models
describe how to deal with occurencies of more than one objective a subject does. In other words, which objective should be used
if the user completed more than one objective.
}
\details{
Function keeps only URLs with events "URL Change" and "first URL", after that it creates a list where each list item
represents a subject. A subject is a progression of urls a participant follow.
A progression ends with the label of the first or last occurrence (attribution model) of an objective else it ends with "Defer".
}
\examples{
import("datafortestingplot/", "amz")
objective  <- c("Harry Potter Special angesehen!" = summary(amz_web)[41,1])
as_clickstream(amz_web, objective, "first")


}

