\name{gitWatermark}
\alias{gitWatermark}
\alias{dev.off.gitWatermark}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{git Plot Watermark}
\description{Adds git information to plotting window as watermark}
\usage{
gitWatermark(VersionNumber = TRUE, URL = TRUE,
             timeAndDate = TRUE, comment = '',
             x = 0.5, y = 0.5,
             col = 'black',transparency = 0.8, srt = 45, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{VersionNumber}{logical. Default of \code{TRUE} adds git version number to watermark}
  \item{URL}{logical. Default of \code{TRUE} adds git remote URL to watermark}
  \item{timeAndDate}{logical. Default of \code{TRUE} adds date and to watermark}
  \item{comment}{additional text to be added to watermark}
  \item{x, y}{corridinates where watermark will be added as fraction of figure size}
  \item{col}{colour of watermarked text}
  \item{transparency}{transparency of watermarked text, between 0-1 woth 0 being no transparency and 1 being completely see through}
  \item{srt}{angle of watermark. see \code{\link{text}}}
  \item{\dots}{Additional arguments passed to  \code{\link{text}}}
}
\details{\code{dev.off.gitWatermark} adds watermark when figure is closed}
%%\references{
%% ~put references to the literature/web site here ~
%%}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%\note{}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{dev.off}}
}
\examples{
    ## assuming already in a git repo
    plot(0)
    gitWatermark()

    dev.new()
    par(mfrow = c(2,2))
    for (i in 1:3) plot(0)
    plot(1:5, 6:10)

    gitWatermark(comment = 'all info')
    gitWatermark(TRUE, FALSE, FALSE, comment = 'git rev no.', x = 0.25, srt = 90)
    gitWatermark(col = 'green', comment = 'green stamp', x = 0.75, srt = -90)
    gitWatermark(transparency = 0, comment = 'not see through', x = 0.25, y = 0.25, srt = 0)

    pdf('yay.pdf')
    par(mfrow = c(2,2))
    plot(0)
    gitWatermark(srt = 0)
    dev.off()

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ graphics }
\keyword{ plot }
\keyword{ git }
