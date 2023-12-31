\name{basehaz}
\alias{basehaz}
\title{Alias for the survfit function}
\description{
  Compute the predicted survival curve for a Cox model.
}
\usage{
basehaz(fit, newdata, centered=TRUE)
}
\arguments{
  \item{fit}{a coxph fit}
  \item{newdata}{a data frame containing one row for each predicted
    survival curve, said row contains the covariate values for that curve}
  \item{centered}{ignored if the \code{newdata} argument is present.
    Otherwise, if TRUE return data from a predicted survival curve
    for the covariate values \code{fit$mean}, if FALSE return a
    prediction for all covariates equal to zero.}
}
\details{
  This function is simply an alias for \code{survfit}, which does the
  actual work and has a richer set of options.  
  The alias exists only because some users look for predicted survival
  estimates under this name. 

  The function returns a data frame containing the \code{time},
  \code{cumhaz} and optionally the strata (if the fitted Cox model used
  a strata statement), which are copied the \code{survfit} result.
  Results for all covariates =0 are a standard form found in textbooks,
  however, due to possible overflow in the exp() function this can be a
  very bad idea in practice. 
}
\value{
  a data frame with variable names of \code{hazard}, \code{time} and
  optionally \code{strata}.  The first is actually the cumulative hazard.
}

\seealso{\code{\link{survfit.coxph}}}
\keyword{survival }

