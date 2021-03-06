% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateSettings.R
\name{createRcsSettings}
\alias{createRcsSettings}
\title{Create Restricted Cubic Spline Settings}
\usage{
createRcsSettings(
  nKnots = 3,
  method = "lrm.fit",
  model = FALSE,
  x = FALSE,
  y = FALSE,
  linear.predictors = TRUE,
  se.fit = FALSE,
  penalty = 0,
  tol = 1e-07,
  strata.penalty = 0,
  var.penalty = "simple",
  scale = FALSE
)
}
\arguments{
\item{nKnots}{Number of knots. Default is 5. The minimum value
is 3.}

\item{method}{Name of fitting function. Only allowable choice
at present is lrm.fit.}

\item{model}{Causes the model frame to be returned in the fit
object}

\item{x}{Causes the expanded design matrix (with missings
excluded) to be returned under the name x. For
print, an object created by lrm.}

\item{y}{causes the response variable (with missings
excluded) to be returned under the name y.}

\item{linear.predictors}{Causes the predicted X beta (with missings
excluded) to be returned under the name
linear.predictors. When the response variable
has more than two levels, the first intercept is
used.}

\item{se.fit}{Causes the standard errors of the fitted values
to be returned under the name se.fit.}

\item{penalty}{The penalty factor subtracted from the log
likelihood is 0.5 β' P β, where β is the vector
of regression coefficients other than intercept(s),
and P is penalty factors * penalty.matrix and
penalty.matrix is defined below. The default is
penalty=0 implying that ordinary unpenalized
maximum likelihood estimation is used. If penalty
is a scalar, it is assumed to be a penalty factor
that applies to all non-intercept parameters in
the model. Alternatively, specify a list to
penalize different types of model terms by
differing amounts. The elements in this list are
named simple, nonlinear, interaction and
nonlinear.interaction. If you omit elements on
the right of this series, values are inherited
from elements on the left. Examples:
penalty=list(simple=5, nonlinear=10) uses a
penalty factor of 10 for nonlinear or interaction
terms. penalty=list(simple=0, nonlinear=2,
nonlinear.interaction=4) does not penalize linear
main effects, uses a penalty factor of 2 for
nonlinear or interaction effects (that are not both),
and 4 for nonlinear interaction effects.}

\item{tol}{Singularity criterion (see lrm.fit)}

\item{strata.penalty}{Scalar penalty factor for the stratification
factor, for the experimental strat variable}

\item{var.penalty}{The type of variance-covariance matrix to be
stored in the var component of the fit when
penalization is used. The default is the inverse
of the penalized information matrix. Specify
var.penalty="sandwich" to use the sandwich
estimator (see below under var), which limited
simulation studies have shown yields variances
estimates that are too low.}

\item{scale}{Set to TRUE to subtract means and divide by
standard deviations of columns of the design
matrix before fitting, and to back-solve for the
un-normalized covariance matrix and regression
coefficients. This can sometimes make the model
converge for very large sample sizes where for
example spline or polynomial component variables
create scaling problems leading to loss of precision
when accumulating sums of squares and crossproducts.}
}
\description{
Creates the settings for fitting a restricted cubic spline smooth estimate
of absolute benefit
}
