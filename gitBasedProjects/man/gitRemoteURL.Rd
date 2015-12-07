\name{gitRemoteURL}
\alias{gitRemoteURL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return Git Remote URL}
\description{Provides the URL of the remote git repo.}
\usage{
    gitRemoteURL(gitLoc = ".")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gitLoc}{path to git repository (i.e. base of git project where \code{'.git'} can found). Default is working directory. For example, if the default of the working directory is provided, and the working directory is in './libs' relative to the project base, \code{gitRemoteURL} will locate the git repo in the base}
\details{If the git repo is not found in the provided path, \code{gitRemoteURL} will search each directory up from the provided path in directory tree until gitLoc is found}
\value{The url of the remote location of the git repo. If remote location has not been added, returns NA}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%%\note{
%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{link{gitVersionNumber}}
}
\examples{
setupProject('yay', remoteURL = 'https://yay/and/wow.git')
gitRemoteURL()
makeDir("yayandwow")
setwd("yayandwow")

# The next two calls return the same value
gitRemoteURL('../')
gitRemoteURL()

# Tidy up
setwd('../..')
unlink('yay', recursive = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ git }
\keyword{ url }% __ONLY ONE__ keyword per line
