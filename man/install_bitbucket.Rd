% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install-bitbucket.r
\name{install_bitbucket}
\alias{install_bitbucket}
\title{Install a package directly from bitbucket}
\usage{
install_bitbucket(repo, username, ref = "master", subdir = NULL,
  quiet = FALSE, auth_user = NULL, password = NULL, ...)
}
\arguments{
\item{repo}{Repository address in the format
\code{username/repo[/subdir][@ref|#pull]}. Alternatively, you can
specify \code{subdir} and/or \code{ref} using the respective parameters
(see below); if both are specified, the values in \code{repo} take
precedence.}

\item{username}{User name. Deprecated: please include username in the
\code{repo} instead.}

\item{ref}{Desired git reference; could be a commit, tag, or branch name.
Defaults to master.}

\item{subdir}{subdirectory within repo that contains the R package.
Deprecated: please include subdir in \code{repo} instead.}

\item{quiet}{if \code{TRUE} suppresses output from this function.}

\item{auth_user}{your account username if you're attempting to install
a package hosted in a private repository (and your username is different
to \code{username})}

\item{password}{your password}

\item{...}{Other arguments passed on to \code{\link{install}}.}
}
\description{
This function is vectorised so you can install multiple packages in
a single command.
}
\examples{
\dontrun{
install_bitbucket("sulab/mygene.r@default")
install_bitbucket("dannavarro/lsr-package")

# Use `update_packages()` to upgrade the version of a package installed by
any of the `install_*()` functions.
update_packages("stringr")
}
}
\seealso{
Bitbucket API docs:
  \url{https://confluence.atlassian.com/bitbucket/use-the-bitbucket-cloud-rest-apis-222724129.html}

\code{\link{update_packages}} to update installed packages from the
  source location

Other package installation: \code{\link{install_bioc}},
  \code{\link{install_cran}}, \code{\link{install_github}},
  \code{\link{install_gitlab}}, \code{\link{install_git}},
  \code{\link{install_svn}}, \code{\link{install_url}},
  \code{\link{install_version}}, \code{\link{install}},
  \code{\link{uninstall}}
}
\concept{package installation}
