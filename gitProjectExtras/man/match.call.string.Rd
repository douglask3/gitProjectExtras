\name{match.call.string}
\alias{match.call.string}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Match Call String}
\description{Returns the name of the current function}
\usage{
match.call.string(call = sys.call(sys.parent(n = 1)), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{call}{call position as used in \code{\link{match.call}}. Default position is the function from which \code{match.call.string} is called}

  \item{\dots}{Additional arguments passed to \code{\link{match.call}}}
}
%%\details{}
\value{function name from which match.call.string is called}
%%\references{
%% ~put references to the literature/web site here ~
%%}
\author{Douglas Kelley \email{douglas.kelley@mq.edu.au}}
%\note{}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{match.call}}
}
\examples{
match.call.string()
yayandwow <<- function()
    match.call.string()

yayandwow()

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ call }
\keyword{ name }
