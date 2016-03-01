\name{gitFullInfo}
\alias{gitFullInfo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Full Git Information Text}
\description{Links git version number, repo url, time and date and/or extra information into string that can be added as e.g. header information.}
\usage{
gitFullInfo(VersionNumber = TRUE, URL = TRUE,
            timeAndDate = TRUE, comment = '')
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{VersionNumber}{logical. Default of \code{TRUE} adds git version number to outputted text}
  \item{URL}{logical. Default of \code{TRUE} adds git remote URL}
  \item{timeAndDate}{logical. Default of \code{TRUE} adds date}
  \item{comment}{additional text to be added to outputted text}
}
\details{Outputs a simple text string with git information as defined by the input logicals, seperated by a new line (ie '\n')}
%%\references{
%% ~put references to the literature/web site here ~
%%}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%\note{}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{gitWatermark}}
    \code{\link{gitVersionNumber}}
    \code{\link{gitRemoteURL}}
    \code{\link{Sys.time}}
}
\examples{

    setupProject('yay')

    # Perform a commit
    x <- matrix(1:10, ncol = 5)
    write(t(x), file = 'wow.txt')
    git.addCommit('.', 'a commit')

    txt = gitFullInfo()
    cat(txt, 'wow.txt', append = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ graphics }
\keyword{ plot }
\keyword{ git }
