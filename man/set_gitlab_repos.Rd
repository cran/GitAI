% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_repos.R
\name{set_gitlab_repos}
\alias{set_gitlab_repos}
\title{Set GitLab repositories in \code{GitAI} object.}
\usage{
set_gitlab_repos(gitai, ..., verbose = is_verbose())
}
\arguments{
\item{gitai}{A \code{GitAI} object.}

\item{...}{Parameters to pass to \code{\link[GitStats]{set_gitlab_host}}
function.}

\item{verbose}{A logical. If \code{FALSE} you won't be getting
additional diagnostic messages.}
}
\value{
A \code{GitAI} object.
}
\description{
Set GitLab repositories in \code{GitAI} object.
}
