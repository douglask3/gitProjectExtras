\name{gitBasedProjects-package}
\alias{gitBasedProjects-package}
\alias{gitBasedProjects}
\docType{package}
\title{Extra Functions for Integrating with git tracked projects}
\description{Allows linking code and outputs with information about git revision numbers and remote
             location. Also contains tools for setting up a project structure when freshly cloned. Feel free to clone and contribute to the package:
             \url{https://bitbucket.org/teambcd/gitprojectextras}.}
\details{
\tabular{ll}{
Package: \tab gitBasedProjects\cr
Type: \tab Package\cr
Version: \tab 3.0\cr
Date: \tab 2015-12-06\cr
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
    ############################
    ## To setup a new project ##
    ############################
    
	## Either from command line:
	\dontrun{
		>> mkdir gitBasedProjectsExample
		>> cd gitBasedProjectsExample
        >> git init
        >> git remote add origin https//yayandwow.com
		>> R
	}
    
    ## or from R
    makeDir("gitBasedProjectsExample")
    setwd("gitBasedProjectsExample")
    git.init()
    git.remote('add origin https//yayandwow.com')
    
	## Then, from R
	setupProjectStructure() # Sets up standard project with directories: 
                            # docs, figs, libs, outputs and temp
                            
    #######################################################
    ## add and source a lib for plotting an example plot ##
    #######################################################

	fileConn <- file("libs/yay.r")
	writeLines(c(
		"yay <- function(toFile=FALSE) {                           ",
		"    funName = match.call.string()                         ",
		"    gitRev  = gitVersionNumber()                          ",
		"    getURL  = gitRemoteURL()                              ",
		"                                                          ",
		"    if (toFile) {                                         ",
		"	     pdf(paste(figs_dir, 'egFig_', funName, gitRev,    ",
		"			   '.pdf', sep=''))                            ",
        "    }                                                     ",
		"    plot(0)                                               ",
		"                                                          ",
		"	if (toFile) dev.off.gitWatermark()                     ",
        "   else gitWatermark()                                    ",
		"	   mtext(paste('git URL:', getURL))		               ",
		"	   mtext(paste('git rev:', gitRev),		               ",
		"		  side=1,line=-1)                                  ",
        "                                                          ",
        "  out = paste('Plot successfully made for                 ",
        "               remote project', gitURL, 'with rev         ",
        "               no.',  gitRev, '\n')                       ",
        "  cat(out)                                                ",
	   "}												"),
	 fileConn)

	close(fileConn)

	sourceAllLibs() # sources all files in 'libs' dir

    #######################################################
    ## Demonstrate commit workflow                       ##
    #######################################################
	yay()           # Plots to Null Device
	yay(TRUE)       # Plots to 'figs' dir.
	list.files("figs/")d
    gitVersionNumber()
    
    git.status()
    git.add('libs/yay.r')
    git.commit('adding an example library')
    
    yay()
    yay(TRUE)
    list.files("figs/")
    gitVersionNumber()
    
}
