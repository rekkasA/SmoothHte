% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateSettings.R
\name{createModelBasedSettings}
\alias{createModelBasedSettings}
\title{Create model based settings}
\usage{
createModelBasedSettings(model = "logistic", type = "risk")
}
\arguments{
\item{model}{The model-type assumed. Currently, only
"logistic" is available}

\item{type}{Can be either "risk" or "treatment". If "risk"
a column called "riskLinearPredictor" is
required in the data. If "treatment" a column
"treatment" is required in the data.}
}
\description{
Create the settings for a model-based approach to HTE. Either a
covariate-adjusted constant treatment effect model or a model with the baseline
risk linear predictor can be considered.
}
