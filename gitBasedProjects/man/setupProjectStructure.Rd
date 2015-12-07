\name{setupProjectStructure}
\alias{setupProjectStructure}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Setup Project Structure}
\description{Adds directories required for a project and places the path in global variables.}
\usage{
setupProjectStructure(names = paste(dirn, "_dir", sep = ""), dirn = c("outputs", "data", "libs", "temp", "figs", "docs"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{Names of the global variables directory path will be stores. If not defined, variables are named as '<directory name>_dir'}
  \item{dirn}{directories to be created, with paths relative to current working directory. By default, creates folders for 'outputs', 'data', 'temp', 'figs', 'docs'}
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
