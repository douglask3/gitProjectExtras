\name{setupProjectStructure}
\alias{setupProjectStructure}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Setup Project Structure}
\description{Adds directories required for a project and places the path in global variables}
\usage{
setupProjectStructure(namess = c("out_dir", "data_dir", "temp_dir", "figs_dir", "docs_dir"), dirn = c("outputs", "data", "temp", "figs", "docs"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{namess}{Names of the global variables directory path will be stores. If NULL, variables are names as ''<directory name>_dir'}
  \item{dirn}{directories to be created, with paths relative to current working directory. By default, creates folders for 'outputs', 'data', 'temp', 'figs', 'docs'}
}
%%\details{}
\value{}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.kelley@mq.edu.au}}
%%\note{%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%%\seealso{}
\examples{
	pritnFiles <- function(files)
		lapply(files,function(i) print(i) )
	
	dir.create("yay")
	setwd("yay")
	
	print( list.files() )
	setupProjectStructure()
	print( list.files() )
	pritnFiles( c("out_dir", "data_dir", "temp_dir", "figs_dir", "docs_dir"))
	
	setwd(out_dir)
	setwd("..")
	
	#########################################################################
	
	setupProjectStructure(namess = c("yay_dir", "wow_dir"), dirn = c("yay", "wow"))
	
	list.files()
	pritnFiles( c("yay", "wow"))
	
	setwd(yay)
	setwd("..")
	

	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ directories }
\keyword{ structure }% __ONLY ONE__ keyword per line
