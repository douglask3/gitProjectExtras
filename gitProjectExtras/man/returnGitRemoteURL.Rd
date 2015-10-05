\name{gitRemoteURL}
\alias{gitRemoteURL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return Git Remote URL}
\description{Provides the URL of the remote git repo.}
\usage{
    gitRemoteURL(gitLoc = ".git")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gitLoc}{name (and optional path location) of revision information store. Defualt is '.git'.}
}
\details{If path is not provided, \code{gitRemoteURL} will search current directory, and then search each directory out from current position in directory tree until gitLoc is found}
\value{The url of the remote location of the git repo. If remote location has not been added, returns NA}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%%\note{
%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{link{gitVersionNumber.Rd}}
}
\examples{
gitRemoteURL()
makeDir("yayandwow")
setwd("yayandwow")
gitRemoteURL('../.git')
gitRemoteURL()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ git }
\keyword{ url }% __ONLY ONE__ keyword per line
