\name{makeDir}
\alias{makeDir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make Directory}
\description{If directory does not exist, then create it}
\usage{
makeDir(fname)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fname}{path and name of directory to be made}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~}
%%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.kelley@mq.edu.au}}
\note{does not make directories recursively}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{makeGlobDir}}
}
\examples{
list.dirs()
makeDir('yayandwow')
list.dirs()
}
\keyword{ Directories }
