\name{gitProjectExtras-package}
\alias{gitProjectExtras-package}
\alias{gitProjectExtras}
\docType{package}
\title{Extra Functions for Integrating with git tracked projects}
\description{Allows linking code and outputs with information about git revision numbers and remote
             location. Also contains tools for setting up a project structure when freshly cloned. Feel free to clone and contribute to the package:
             \url{https://bitbucket.org/teambcd/gitprojectextras}}
\details{
\tabular{ll}{
Package: \tab gitProjectExtras\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-10-15\cr
License: \tab GPL 2\cr
Website: https://bitbucket.org/teambcd/gitprojectextras
}
%%~~ An overview of how to use the package, including the most important ~~
%%~~ functions ~~
}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com},
Rhys Whitley   \email{rhys.whitley@gmail.com}}
%%\references{
%%~~ Literature or other references for background information ~~}
%%~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
%%~~ the R documentation directory ~~
\keyword{ package }
\keyword{ git }
%%\seealso{
%%~~ Optional links to other man pages, e.g. ~~
%%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%%}
\examples{
	## From command line
	\dontrun{
		>> git clone https://bitbucket.org/teambcd/gitprojectextras.git
		>> cd gitprojectextras
		>> R
	}
	## From R
	library("gitProjectExtras")
	makeDir("tryOut")
	setwd("tryOut")
	setupProjectStructure()

	fileConn <- file("libs/yay.r")
	writeLines(c(
		"yay <- function(toFile=FALSE) {			",
		"	funName = match.call.string()			",
		"	gitRev  = returnGitVersionNumber()		",
		"	getURL  = returnGitRemoteURL()			",
		"												",
		"	if (toFile)								",
		"	pdf(paste('figs/egFig_',funName,			",
		"			   '.pdf', sep=''))				",
		"	plot(0)									",
		"	mtext(paste('git URL:', getURL))		",
		"	mtext(paste('git rev:', gitRev),		",
		"		  side=1,line=-1)						",
		"												",
		"	if (toFile) dev.off()					",
	   "}												"),
	 fileConn)

	close(fileConn)

	sourceAllLibs()

	yay()

	yay(TRUE)

	list.files("figs/")
}
