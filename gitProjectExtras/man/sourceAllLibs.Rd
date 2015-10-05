\name{sourceAllLibs}
\alias{sourceAllLibs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Source All Libraries}
\description{Sources all R code in a given directory}
\usage{
sourceAllLibs(path = "libs/", trace = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path}{Path to the directory containing code. Default is 'libs'}
  \item{trace}{logical. Default of TRUE lists files as they are sourced. Useful for bug hunting.}
  \item{\dots}{Arguements passed to \code{\link{source}}}
}
\details{If there is a sourcing error when trying to source of a file, then the error message is displayed and the 
         file is skipped over. If trace=TRUE, the filename will be listed above the error}
%%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...}
%%\references{
%% ~put references to the literature/web site here ~}
\author{R Core development team}
\note{This is taken straight from the \code{\link{source}} help page example.}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{source}}
}
%%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ source }
\keyword{ directories }% __ONLY ONE__ keyword per line
