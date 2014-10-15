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
  \item{gitLoc}{name (and optional path location) of revision information store. Defualt is '.git'.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (short = TRUE, gitLoc = ".git") 
{
    gitLoc = findProjectPath(gitLoc)
    headPath = file.path(gitLoc, "HEAD")
    headAt = as.matrix(read.table(headPath, sep = " ", stringsAsFactors = FALSE))[2]
    headAt = filePath(gitLoc, headAt)
    rev = as.matrix(read.table(headAt))
    if (short) 
        rev = substr(rev, 1, 7)
    return(rev)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
