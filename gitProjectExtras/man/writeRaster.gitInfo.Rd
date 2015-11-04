\name{writeRaster.gitInfo}
\alias{writeRaster.gitInfo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Write raster data to a file with git information}
\description{An extension of \code{\link{writeRaster}} in package
             \code{\link{raster}} which adds projects git information to
             outputted netcdf raster file}
\usage{
    writeRaster.gitInfo(x, filename,
    	                VersionNumber = TRUE, URL = TRUE,
                        timeAndDate = TRUE, comment = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{\link{raster}, \link{stack} or \link{brick} object}
  \item{filename}{Output filename}
  \item{VersionNumber}{logical. Default of \code{TRUE} adds git version number
        attribute}
  \item{URL}{logical. Default of \code{TRUE} adds git remote URL to attribute}
  \item{comment}{additional text to be added to watermark}
  \item{\dots}{Additional arguments passed to  \code{\link{writeRaster}}}
}
\details{Works exactly the same way as \code{\link{writeRaster}} on netcdf files
         but adds git information is added as comment attributes. Note, unlike
         \code{\link{gitWatermark}}, there is no additional arguement for adding
         a time and date stamp, and this is already performed by
         \code{\link{writeRaster}}}
%%\references{
%% ~put references to the literature/web site here ~
%%}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%\note{}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{raster}}
    \code{\link{writeRaster}}
    \code{\link{gitWatermark}}
    \code{\link{dev.off.gitWatermark}}
}
\examples{
    r <- raster(system.file("external/test.grd", package = "raster"))

    # take a small part
    r <- crop(r, extent(179880, 180800, 329880, 330840) )


    printAttributes <- function(filename) {
        nc  = nc_open("allint.nc")
        att = ncatt_get(nc, 0)
        print(att)
    }
    # write to an integer binary file
    rf <- writeRaster.gitInfo(r, filename = "allint.nc", datatype = 'INT4S',
                              overwrite = TRUE)
    printAttributes('allint.nc')


    # make a brick and save multi-layer file
    b <- brick(r, sqrt(r))
    bf <- writeRaster.gitInfo(b, filename="multi.nc", URL = FALSE,
                              comment = c(yay = 'wow'), overwrite=TRUE)
    printAttributes('multi.nc')

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ write }
\keyword{ raster }
\keyword{ git }
\keyword{ nc }
