\name{returnGitVersionNumber}
\alias{returnGitVersionNumber}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return Git Version Number}
\description{Returns the current git revision code}
\usage{
returnGitVersionNumber(short = TRUE, gitLoc = ".git")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{short}{logical. If TRUE, returns the short (i.e 7 digit) revision code. If FALSE, returns full code}
  \item{gitLoc}{name (and optional path location) of revision information store. Default is '.git'.}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~}
\value{The revision code for the last git commit.}
%%\references{%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglaskelley3@gmail.com}}
\note{Does not indicate if modification has been made since last commit.}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{returnGitRemoteURL}}
}
\examples{
returnGitVersionNumber()
makeDir("yayandwow")
setwd("yayandwow")

# The next two calls return the same value
returnGitVersionNumber(gitLoc = '../.git')
returnGitVersionNumber()

# Return Long revision number
returnGitVersionNumber(FALSE)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ git }
\keyword{ version }% __ONLY ONE__ keyword per line
