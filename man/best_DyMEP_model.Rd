% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DyMEP_prediction_helper_functions.R
\name{best_DyMEP_model}
\alias{best_DyMEP_model}
\title{A function to get the best model with the environmental covariates at hand}
\usage{
best_DyMEP_model(
  env_covariates,
  pheno_phases,
  crop_abbrev,
  skillscore_to_select = "RMSE",
  return_just_best = TRUE,
  output_list_for_prediction = FALSE
)
}
\arguments{
\item{env_covariates}{the environmental
covariates you have at hand; inputs as character strings naming the available
  environmental covariate}

\item{pheno_phases}{the phenological phases you are interested in. Input
as character string, available phenological phases do depend on the chosen
crop (use available_crops_and_phases())}

\item{crop_abbrev}{the abbreviation of the wanted crop}

\item{skillscore_to_select}{the skillscore according to which you want to
select (Default = "RMSE); available options: "RMSE", "MAE", "cor", "AIC" and
"SumLogLikelihood"}

\item{return_just_best}{decide whether you want to get a list of all
potential options back, or just the best (default = TRUE)}

\item{output_list_for_prediction}{boolean (TRUE/FALSE), if TRUE the output
of this function is a list which can directly be used for the
pheno_phase_prediction function as input (phase_covariate_list). Select
return_just_best also as TRUE if this output is wished}
}
\value{
dataframe with the best models selected for the given input arguments
}
\description{
A function to get the best model with the environmental covariates at hand
}
\section{Fields}{

\describe{
\item{\code{abbrev}}{Description of crop_abbrev column.}

\item{\code{pheno_phase}}{Description of pheno_phase column.}
}}

\examples{
best_DyMEP_model(env_covariates =  c("tas","VPD"),
      pheno_phases = c("sowing-emergence"),
      crop_abbrev = "WW")
}
\keyword{internal}
