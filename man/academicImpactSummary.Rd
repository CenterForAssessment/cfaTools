\name{academicImpactSummary}
\alias{academicImpactSummary}
\title{Academic Impact Summary Data from individual level SGP Data}
\description{Function for creating summary (e.g., School) impact data.
}
\usage{
academicImpactSummary(
	sgp_data,
	state,
	current_year=NULL,
	prior_year=NULL,
	content_areas=NULL,
	all_grades=NULL,
	sgp_grades=NULL,
	aggregation_group="SCHOOL_NUMBER",
	years_for_aggregates=NULL,
	rtm_adjustment=TRUE)
}

\arguments{
  \item{sgp_data}{SGP object or LONG data output from SGP analyses.
  }
  \item{state}{Two letter state acronymn for use with SGPstateData embedded in SGP package for percent proficient calculations.
  }
  \item{current_year}{Year to be considered as current for purposes of academic impact calculations.
  }
  \item{prior_year}{Year to be considered as prior for purposes of academic impact calculations.
  }
  \item{content_areas}{Content areas for which to calculate academic impact.
  }
	\item{all_grades}{Grades within the designated content areas to calculate academic STATUS impact.
  }
  \item{sgp_grades}{Grades within the designated content areas to calculate academic GROWTH impact.
  }
  \item{aggregation_group}{Character string indicating groups to aggregate by and create impact summaries for.
  }
	\item{years_for_aggregates}{One or both of prior_year and current_year to create aggregates for. Defaults is NULL which gets turned into both prior_year and current_year.
  }
  \item{rtm_adjustment}{Logical. Should the regression to the mean adjustments be calculated.
  }
}


\details{Typical use of function creates summary file for schools or districts indicating academic impact.
}

\value{Function returns a summary table providing non-adjusted and adjusted median SGPs as well as non-adjusted and adjusted gamma effect sizes.
}

\author{Damian W. Betebenner \email{dbetebenner@nciea.org} }

\examples{
	\dontrun{
		academicImpactSummary(
			sgp_data=sgpData_LONG_COVID,
			state="DEMO_COVID",
			current_year="2021",
			prior_year="2019",
			content_areas=c("ELA", "MATHEMATICS"),
			all_grades=as.character(3:8),
			sgp_grades=as.character(5:8))
	}
}

\keyword{ misc }
\keyword{ models }
