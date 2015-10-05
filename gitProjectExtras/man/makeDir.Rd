\name{makeDir}
\alias{makeDir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make Directory}
\description{If directory does not exist, then create it. Essentially works as \code{\link{dir.create}} but will not cause an error if the directory already exists.}
\usage{
makeDir(fname, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fname}{name (inc. path) of directory to be made}
  \item{\dots}{Arguements passed to \code{\link{dir.create}}}
}
\details{Note, with R3.0+, this function is probably obsolute. Just use dir.create(path, showWarnings=FALSE) instead.}
%%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.kelley@mq.edu.au}}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{makeGlobDir}}
    \code{\link{dir.create}}
}
\examples{
list.dirs()
makeDir('yayandwow')
list.dirs()
}
\keyword{ Directories }
