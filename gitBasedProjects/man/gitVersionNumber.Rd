\name{gitVersionNumber}
\alias{gitVersionNumber}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return Git Version Number}
\description{Returns the current git revision code.}
\usage{
    gitVersionNumber(short = TRUE, gitLoc = ".")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{short}{logical. If TRUE, returns the short (i.e 7 digit) revision code. If FALSE, returns full code}
  \item{gitLoc}{path to git repository (i.e. base of git project where \code{'.git'} can found). Default is working directory. For example, if the default of the working directory is provided, and the working directory is in './libs' relative to the project base, \code{gitVersionNumber} will locate the git repo in the base}
}
\details{If the git repo is not found in the provided path, \code{gitVersionNumber} will search each directory up from the provided path in directory tree until gitLoc is found}
\value{The revision code for the last git commit.}
%%\references{%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
\note{Does not indicate if modification has been made since last commit.}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{gitRemoteURL}}
}
\examples{

setupProject('yay')

# Perform a commit
x <- matrix(1:10, ncol = 5)
write(t(x), file = 'wow.txt')
git.addCommit('.', 'a commit')

# Return git version bumer
gitVersionNumber()

# make and change dir.
makeDir("yayandwow")
setwd("yayandwow")

# The next two calls return the same value
gitVersionNumber(gitLoc = '../')
gitVersionNumber()

# Return Long revision number
gitVersionNumber(FALSE)

# Tidy up
setwd('../..')
unlink('yay', recursive = TRUE)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ git }
\keyword{ version }% __ONLY ONE__ keyword per line
