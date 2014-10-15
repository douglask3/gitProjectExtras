\name{returnGitRemoteURL}
\alias{returnGitRemoteURL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return Git Remote URL}
\description{Provides the URL of the remote git repo.}
\usage{
    returnGitRemoteURL(gitLoc = ".git")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gitLoc}{name (and optional path location) of revision information store. Defualt is '.git'.}
}
\details{If path is not provided, \code{returnGitRemoteURL} will search current directory, and then search each directory out from current position in directory tree until gitLoc is found}
\value{The url of the remote store of the current git project. If remote location has not been added, returns NA}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.kelley@mq.edu.au}}
%%\note{
%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{link{returnGitVersionNumber.Rd}}
}
\examples{
returnGitRemoteURL()
makeDir("yayandwow")
setwd("yayandwow")
returnGitRemoteURL('../.git')
returnGitRemoteURL()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ git }
\keyword{ url }% __ONLY ONE__ keyword per line
