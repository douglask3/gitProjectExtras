\name{makeGlobDir}
\alias{makeGlobDir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make Global Directory}
\description{If it does not already exist, makes directory. Whether directory exists or not, assigns directory path to a global variable}
\usage{
makeGlobDir(obj, fname)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{variable name which will store directory path and become global}
  \item{fname}{directory name/path used by \code{\link{makeDir}}}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~}
%% \value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.kelley@mq.ed.au}}
\note{does not make directories recursively}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
     \code{\link{makeDir}}
}
\examples{
list.dirs()
makeGlobDir('wowandyay','yayandwow')
list.dirs()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Directories }
\keyword{ assign }% __ONLY ONE__ keyword per line
\keyword{ global }% __ONLY ONE__ keyword per line
