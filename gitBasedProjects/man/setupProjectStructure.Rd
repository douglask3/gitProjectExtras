\name{setupProjectStructure}
\alias{setupProjectStructure}
\alias{setupProject}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Setup Project}
\description{Functions for setting up a new git based project complete with basic directory structure.}
\usage{
setupProjectStructure(names = paste(dirn, "_dir", sep = ""), dirn = c("outputs", "data", "libs", "temp", "figs", "docs"))
setupProject(dir = '.', initaliseGit = TRUE, remoteURL = NULL, setupStructure = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{Names of the global variables directory path will be stores. If not defined, variables are named as '<directory name>_dir'}
  \item{dirn}{directories to be created, with paths relative to current working directory. By default, creates folders for 'outputs', 'data', 'temp', 'figs', 'docs'}
  \item{dir}{New project path relative to working directory}
  \item{initaliseGit}{a logical (not \code{NA}). If default of \code{TRUE}, then initialise a new git repository}
  \item{remoteURL}{URL to be assigned as git remote. If default of \code{NULL} nothing is assigned.}
  \item{setupStructure}{a logical (not \code{NA}). If default of \code{TRUE}, then directory structure is setup by \code{setupProjectStructure}}
  \item{...}{arguments passed to \code{setupProjectStructure}}
}
%%\details{}
\value{Sets "names" as globally callable variables}
%%\references{
%% ~put references to the literature/web site here ~}
\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
%%\note{%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%%\seealso{}
\examples{
	printFiles <- function(files)
		lapply(files,function(i) print(i) )

	dir.create("yay")
	setwd("yay")

	print( list.files() )
	setupProjectStructure()
	print( list.files() )
	printFiles( c(outputs_dir, data_dir, temp_dir, figs_dir, docs_dir))

	setwd(outputs_dir)
	setwd("..")

	#########################################################################

	setupProjectStructure(names = c("yayDir", "wowDir"), dirn = c("yay", "wow"))

	list.files()
	printFiles( c("yay", "wow"))

	setwd(yayDir)
	setwd("..")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ directories }
\keyword{ structure }% __ONLY ONE__ keyword per line
